
#include <iostream>
#include <triton/api.hpp>
#include <triton/x86Specifications.hpp>
#include <triton/abstractBinary.hpp>
#include <triton/x86Specifications.hpp>

#include "BPFConfig.h"


using namespace triton;
using namespace triton::arch;
using namespace triton::arch::x86;
using namespace triton::engines;
using namespace triton::modes;
using namespace triton::ast;


bool LoadBinary(std::string Path, uint64_t ImageBase) {
	FILE *fp = fopen(Path.c_str(), "rb");
	if (!fp) {
		return false;
	}

	//Get filesize
	fseek(fp, 0, SEEK_END);
	long FileSize = ftell(fp);
	fseek(fp, 0, SEEK_SET);

	uint8 *Memory = (uint8 *)calloc(1, FileSize);
	fread(Memory, FileSize, 1, fp);
	fclose(fp);

	api.setConcreteMemoryAreaValue(ImageBase, Memory, FileSize);

	return true;
}


void EmulateCall(uint64 Addr) {
	//Clear RAX
	uint8 OpcodeXor[] = { 0x48, 0x31, 0xC0 };

	Instruction instruction;
	instruction.setOpcodes(OpcodeXor, (uint32) sizeof(OpcodeXor));
	instruction.setAddress(Addr);

	// Process
	api.processing(instruction);
	std::cout << instruction << std::endl;

	int AddrRel = 0;

	if (Addr == ldabsh || Addr == ldindh) {
		//ldabsh <= BIG ENDIAN TO LITTLE ENDIAN!!!
		//mov ax, word ptr [esi+0x10000000]
		//00000000772C7981 | 66 67 8B 86 00 00 00 10  | mov ax,word ptr ds:[esi+10000000]       | SKIP IT
		//00000000772C7981 | 67 8A 86 01 00 00 10     | mov al,byte ptr ds:[esi+10000001]       |
		//00000000772C798C | 67 8A A6 00 00 00 10     | mov ah,byte ptr ds:[esi+10000000]       |
		uint8 Opcode[]  = { 0x67 ,0x8A ,0x86 ,0x01 ,0x00 ,0x00 ,0x10 };
		uint8 Opcode2[] = { 0x67 ,0x8A ,0xA6 ,0x00 ,0x00 ,0x00 ,0x10 };

		Instruction instruction;
		instruction.setOpcodes(Opcode2, (uint32) sizeof(Opcode2));
		instruction.setAddress(Addr + 3);
		api.processing(instruction);
		std::cout << instruction << std::endl;

		Instruction instruction2;
		instruction2.setOpcodes(Opcode, (uint32) sizeof(Opcode));
		instruction2.setAddress(Addr + 10);
		api.processing(instruction2);
		std::cout << instruction2 << std::endl;

		AddrRel = sizeof(Opcode) + sizeof(Opcode2) + 3;
	}
	else if (Addr == ldindb || Addr == ldabsb) {
		//ldindb
		//00000000772C7981 | 67 8A 86 00 00 00 10     | mov al,byte ptr ds:[esi+10000000]       |
		uint8 Opcode[] = { 0x67 ,0x8A ,0x86 ,0x00 ,0x00 ,0x00 ,0x10 };

		Instruction instruction;
		instruction.setOpcodes(Opcode, (uint32) sizeof(Opcode));
		instruction.setAddress(Addr + 3);

		AddrRel = sizeof(Opcode) + 3;

		// Process
		api.processing(instruction);
		std::cout << instruction << std::endl;
	}
	else if (Addr == ldindw) {
		//ldindw ENDIAN SWAP!
		//00000000772C7981 | 67 8B 86 00 00 00 10     | mov eax,dword ptr ds:[esi+10000000]     |
		//00000000772C7981 | 0F C8                    | bswap eax                               |
		uint8 Opcode[] = { 0x67 ,0x8B ,0x86 ,0x00 ,0x00 ,0x00 ,0x10 };
		uint8 Opcode2[] = { 0x0F ,0xC8 };

		Instruction instruction;
		instruction.setOpcodes(Opcode, (uint32) sizeof(Opcode));
		instruction.setAddress(Addr + 3);

		// Process
		api.processing(instruction);
		std::cout << instruction << std::endl;

		Instruction instruction2;
		instruction2.setOpcodes(Opcode2, (uint32) sizeof(Opcode2));
		instruction2.setAddress(Addr + 3 + sizeof(Opcode));

		AddrRel = sizeof(Opcode) + 3 + sizeof(Opcode2);;

		// Process
		api.processing(instruction2);
		std::cout << instruction << std::endl;
	}
	else if (Addr == BPF_MAP_LOOKUP_ELEM) {
		//BPF_MAP_LOOKUP_ELEM
		//RAX==0 means LUM check
		//00000000772C7988 | 48 C7 C0 00 00 00 20 | mov rax, 20000000 |
		uint8 Opcode[] = { 0x48 ,0xC7 ,0xC0 ,0x00 ,0x00 ,0x00 ,0x20 };

		//Read Arguments
		uint64 Key = api.getConcreteRegisterValue(TRITON_X86_REG_RSI).convert_to<uint64>();
	    auto FirstArgument = api.getConcreteMemoryValue(Key);

		std::cout << "BPF_MAP_LOOKUP_ELEM ID: " << FirstArgument << std::endl;
		
		uint32_t Value;

		//Set the right value
		switch (FirstArgument) {
			case 0: 
				//Value = 1;
				Value = 0;
				break;
			case 1:
				Value = 0xBD89A8AE;
				break;
			case 2:
				Value = 0xBA9BBC8D;
				break;
			default:
				std::cout << "Unknown Key!" << std::endl;
		}

		api.setConcreteMemoryAreaValue(0x20000000, (uint8 *)&Value, 4);

		Instruction instruction;
		instruction.setOpcodes(Opcode, (uint32) sizeof(Opcode));
		instruction.setAddress(Addr + 3);

		AddrRel = sizeof(Opcode) + 3;

		// Process
		api.processing(instruction);
		std::cout << instruction << std::endl;
	}
	else if (Addr == BPF_MAP_UPDATE_ELEM) {
		//BPF_MAP_UPDATE_ELEM
		//WE DO NOTHING
		std::cout << "BPF_MAP_UPDATE_ELEM" << std::endl;
		AddrRel += 3;
	}
	else {
		printf("Unknown Callee! %X\n", Addr);
		exit(0);
	}

	//Return
	uint8 Opcode[] = { 0xC3 };

	instruction.setOpcodes(Opcode, (uint32) sizeof(Opcode));
	instruction.setAddress(Addr + AddrRel);

	// Process
	api.processing(instruction);
	std::cout << instruction << std::endl;

	auto EAX = api.getConcreteRegisterValue(TRITON_X86_REG_EAX).convert_to<uint64>();
	printf("RAX = %X\n", EAX);
}

void SolveSomething(uint64 PC) {
	// Solve if needed :D
	//cmp     r15, 53535449h
	if (PC == 0xffffffffc0015626) {
		//Our expression
		std::vector<ast::AbstractNode *> expr;

		//Result reg check
		auto r15SE = api.getSymbolicExpressionFromId(api.getSymbolicRegisterId(TRITON_X86_REG_R15));
		auto r15d = ast::extract(7, 0, r15SE->getAst());

		/* Display RAX's AST*/
		//std::cout << "R15 expr: " << r15d << std::endl;

		//Limit the space
		//0x10000000 + 46) + i
		printf("Setting Memory!\n");
		for (int i = 0; i < 32; i++) {				
				auto MemoryID = api.getSymbolicMemoryId(0x10000000 + 46 + i);
				auto MemoryVar = api.getSymbolicVariableFromId(MemoryID);
				
				expr.push_back(ast::assert_(ast::bvugt(ast::variable(*MemoryVar), ast::bv('1', 8))));
				expr.push_back(ast::assert_(ast::bvult(ast::variable(*MemoryVar), ast::bv('2', 8))));
			}

		printf("Done!\n");

		// Check the Output Value
		expr.push_back(ast::assert_(ast::equal(r15d, ast::bv(0x53535449, 8))));

		auto cstr = ast::compound(expr);

		std::cout << "[+] Asking for a model, please wait..." << std::endl;
		auto models = api.getModels(cstr,10);
		if (models.size() == 0) {
			std::cout << "[+] No model found!" << std::endl;
		}
		for (auto model : models) {
			for (auto i : model) {
				auto value = i.second.getValue();
				api.getSymbolicVariableFromId(i.first)->setConcreteValue(value);

				char OutputChar = value.convert_to<uint8>();
				//std::cout << "[+] Symbolic variable " << i.first << " " << value << " Value: " << OutputChar << std::endl;
				std::cout << OutputChar;
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;
;
	}
}

/*
	This one will print the Register state
*/
void PrintDebugOutput64() {
	uint64 rax = api.getConcreteRegisterValue(TRITON_X86_REG_RAX).convert_to<uint64>();;
	uint64 rbx = api.getConcreteRegisterValue(TRITON_X86_REG_RBX).convert_to<uint64>();;
	uint64 rcx = api.getConcreteRegisterValue(TRITON_X86_REG_RCX).convert_to<uint64>();;
	uint64 rdx = api.getConcreteRegisterValue(TRITON_X86_REG_RDX).convert_to<uint64>();;
	uint64 rsi = api.getConcreteRegisterValue(TRITON_X86_REG_RSI).convert_to<uint64>();;
	uint64 rdi = api.getConcreteRegisterValue(TRITON_X86_REG_RDI).convert_to<uint64>();;
	uint64 rbp = api.getConcreteRegisterValue(TRITON_X86_REG_RBP).convert_to<uint64>();;
	uint64 rsp = api.getConcreteRegisterValue(TRITON_X86_REG_RSP).convert_to<uint64>();;
	uint64 r8 = api.getConcreteRegisterValue(TRITON_X86_REG_R8).convert_to<uint64>();;
	uint64 r9 = api.getConcreteRegisterValue(TRITON_X86_REG_R9).convert_to<uint64>();;
	uint64 r10 = api.getConcreteRegisterValue(TRITON_X86_REG_R10).convert_to<uint64>();;
	uint64 r11 = api.getConcreteRegisterValue(TRITON_X86_REG_R11).convert_to<uint64>();;
	uint64 r12 = api.getConcreteRegisterValue(TRITON_X86_REG_R12).convert_to<uint64>();;
	uint64 r13 = api.getConcreteRegisterValue(TRITON_X86_REG_R13).convert_to<uint64>();;
	uint64 r14 = api.getConcreteRegisterValue(TRITON_X86_REG_R14).convert_to<uint64>();;
	uint64 r15 = api.getConcreteRegisterValue(TRITON_X86_REG_R15).convert_to<uint64>();;

	printf("\nRAX=%X RBX=%X RCX=%X RDX=%X\n", rax, rbx, rcx, rdx);
	printf("RDI=%X RBP=%X RSP=%X RSI=%X\n", rdi, rbp, rsp, rsi);
	printf("R8= %X R9 =%X R10=%X R11=%X R12=%X\n", r8, r9, r10, r11, r12);
	printf("R13=%X R14=%X R15=%X\n", r13, r14, r15);
}


void EmulatePCSimics(uint64 PC) {
	std::cout << "[+] Starting Emulation." << std::endl;
	// Run the Triton emulation
	while (PC) {
		//Print Debug State
		PrintDebugOutput64();

		//Check if we want to solve something at this point
		//SolveSomething(PC);
	

		//Take care of calls
		if (PC == ldabsh 
			|| PC == ldabsb 
			|| PC == BPF_MAP_LOOKUP_ELEM 
			|| PC == ldindw 
			|| PC == BPF_MAP_UPDATE_ELEM 
			|| PC == ldindb 
			|| PC == ldindh) {

			//Emulate the CALL
			EmulateCall(PC);

			//Get Next PC
			auto NewPC = api.getConcreteRegisterValue(TRITON_X86_REG_RIP);
			PC = NewPC.convert_to<uint64>();
			continue;
		}

		//Fetch opcodes
		auto opcodes = api.getConcreteMemoryAreaValue(PC, 16);

		//Create the Triton instruction
		Instruction instruction;
		instruction.setOpcodes(opcodes.data(), (uint32)opcodes.size());
		instruction.setAddress(PC);

		// Process
		api.processing(instruction);
		std::cout << instruction << std::endl;		

		//Get Next PC
		auto NewPC = api.getConcreteRegisterValue(TRITON_X86_REG_RIP);
		PC = NewPC.convert_to<uint64>();		
	}

	std::cout << "Return to: " << std::hex << PC << std::endl;
	std::cout << "[+] Emulation done." << std::endl;
}

ast::AbstractNode* ConstantFolding(ast::AbstractNode* node) {

  if (node->isSymbolized()) {
    return node;
  }


  return ast::bv(node->evaluate(), node->getBitvectorSize());
}

void RunBFTSolver(std::string FilePath) {
	/* Set the arch */
	api.setArchitecture(ARCH_X86_64);
	
	//Enable modes
	api.enableMode(ALIGNED_MEMORY, true);
	api.enableMode(ONLY_ON_SYMBOLIZED, true);

	//Load the binary
	LoadBinary(FilePath, 0xFFFFFFFFC0014248);

	 /* Record a simplification callback */
  	//api.addCallback(ConstantFolding);

	//Define a fake stack		
	api.setConcreteRegisterValue(Register(ID_REG_RSP, 0x7fffffff));
	api.setConcreteRegisterValue(Register(ID_REG_RBP, 0x7fffffff));

	api.setConcreteRegisterValue(Register(ID_REG_RAX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_RBX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_RCX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_RDX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_RSI, 0));
	api.setConcreteRegisterValue(Register(ID_REG_RDI, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R8, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R9, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R10, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R11, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R12, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R13, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R14, 0));
	api.setConcreteRegisterValue(Register(ID_REG_R15, 0));
	api.setConcreteRegisterValue(Register(ID_REG_EFLAGS, 0));
		
	//Define Mode 0 = LUM | 1 = KEY
	//20000000 is the addr of the BFT map
	int Mode = 1;
	api.setConcreteMemoryValue(0x20000000, 0x0);
	api.setConcreteMemoryValue(0x20000001, 0x0);
	api.setConcreteMemoryValue(0x20000002, 0x0);
	api.setConcreteMemoryValue(0x20000003, 0x0);
	api.setConcreteMemoryValue(0x20000004, 0x0);
	api.setConcreteMemoryValue(0x20000005, 0x0);
	api.setConcreteMemoryValue(0x20000006, 0x0);
	api.setConcreteMemoryValue(0x20000007, 0x0);

	if (Mode == 1) {
		// LUM MODE
		// Packet is const
		api.setConcreteMemoryAreaValue(0x10000000, udp_packet_pcap, 58);
	}
	else {
		// Key Packet to craft
		// Fixed data
		api.setConcreteMemoryAreaValue(0x10000000, udp_packet_pcap_key, 46);

		// Data to craft
		for (int i = 0; i < 32; i++) {
			//Test should be 46
			//api.convertMemoryToSymbolicVariable(MemoryAccess(((uint64)0x10000000 + 46) + i, BYTE_SIZE));
			api.setConcreteMemoryValue(0x10000000 + 46 + i, udp_packet_pcap_key[46 + i]);
		}

		//Fixed data
		api.setConcreteMemoryValue(0x10000000 + 46 + 32, udp_packet_pcap_key[46 + 32]);
	}

	//Start the emulation
	EmulatePCSimics(0xFFFFFFFFC0014248);


	printf("Key:\n");
	for (int i=0;i<32+1+4;i++) {
		printf("%c", udp_packet_pcap_key[42+i]);
	}
	printf("\n");

	//Check 1 FFFFFFFFC00155F0 cmp r15, 'SSTI' 
	//R15 derived input
	//
	//api.convertRegisterToSymbolicVariable(ID_REG_R15);
	//EmulatePCSimics(0xFFFFFFFFC00155EC); //RSI 
}

int main(int argc, const char **argv) {
	std::cout << "SSTIC 2017 BFP Tracer/Solver (pgarba)" << std::endl;
	if (argc != 2) {
		std::cout << "Usage: " << argv[0]  << " <Binary.bin>\n" << std::endl;
		return 1;
	}

	// Run the solver
	std::string FilePath(argv[1]);

	RunBFTSolver(FilePath);

	return 0;
}
