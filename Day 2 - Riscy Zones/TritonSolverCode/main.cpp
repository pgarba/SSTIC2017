/*
  _________ ____________________.____________   _______________  _____________ 
 /   _____//   _____/\__    ___/|   \_   ___ \  \_____  \   _  \/_   \______  \
 \_____  \ \_____  \   |    |   |   /    \  \/   /  ____/  /_\  \|   |   /    /
 /        \/        \  |    |   |   \     \____ /       \  \_/   \   |  /    / 
/_______  /_______  /  |____|   |___|\______  / \_______ \_____  /___| /____/  
        \/        \/                        \/          \/     \/              
__________     ___________              ________      _____________.           
\______   \ ___\__    ___/__________   /  _____/_____ \______   \_ |__ _____   
 |     ___// __ \|    |_/ __ \_  __ \ /   \  ___\__  \ |       _/| __ \\__  \  
 |    |   \  ___/|    |\  ___/|  | \/ \    \_\  \/ __ \|    |   \| \_\ \/ __ \_
 |____|    \___  >____| \___  >__|     \______  (____  /____|_  /|___  (____  /
               \/           \/                \/     \/       \/     \/     \/ 
	Peter Garba (c) 2017
*/

#include <iostream>
#include <triton/api.hpp>
#include <triton/x86Specifications.hpp>
#include <triton/abstractBinary.hpp>
#include <triton/x86Specifications.hpp>

using namespace triton;
using namespace triton::arch;
using namespace triton::arch::x86;
using namespace triton::engines;
//using namespace triton::modes;
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

	api.setConcreteMemoryAreaValue(ImageBase, Memory + (0x440) , FileSize);
}


void EmulatePCSimics(uint64 PC) {
	std::cout << "[+] Starting Emulation." << std::endl;
	// Run the Triton emulation
	while (PC) {
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
		auto NewPC = api.getConcreteRegisterValue(TRITON_X86_REG_EIP);
		PC = NewPC.convert_to<uint64>();		

		//Solve if needed
		if (PC == 0x0040132D) {
			printf("[+] Endpoint reached ...\n");

			std::vector<ast::AbstractNode *> expr;

			// Check memory for number values
			//unsigned char Expected[] = { 0x44 ,0x65 ,0x63 ,0x72 ,0x79 ,0x70 ,0x74 ,0x65 ,0x64 ,0x20 ,0x62 ,0x6C ,0x6F ,0x63 ,0x6B ,0x0A };
			unsigned char Expected[] = { 0x5d ,0x00 ,0x00 ,0x80 ,0x00 ,0xff ,0xff ,0xff ,0xff ,0xff ,0xff ,0xff ,0xff ,0x00 ,0x7f ,0xb6 };
			// Build constraint
			//for (int i = 15; i >= 0; i--) {
			int index = 0;
			switch (PC) {
				/*case 0x0040108E:
					index = 15;
					break;*/
				/*case 0x004010B5:
					index = 14;
					break;*/
				/*case 0x004010DD:
					index = 13;
					break;*/
				case 0x0040132D:
					index = 0;
					break;
				//case 0x0040132D:
				//	index = 0;
				//	break;
			}

			for (int i = index; i < 16; i++) {
				auto MemoryID = api.getSymbolicMemoryId(0x00403384 + i);;
				auto MemoryAST = api.getFullAstFromId(MemoryID);
				auto MemoryASTExtracted = ast::extract(7, 0, MemoryAST);

				expr.push_back(ast::assert_(ast::equal(MemoryASTExtracted, ast::bv(Expected[i], 8))));
			}

			// Solve
			auto cstr = ast::compound(expr);

			//std::cout << cstr << std::endl;

			std::cout << "[+] Asking for a model, please wait..." << std::endl;
			auto models = api.getModels(cstr, 10);
			std::cout << "Model Count: " << models.size() << std::endl;
			//std::cout << "Model: " << cstr << std::endl;
			for (auto model : models) {
				for (auto i : model) {
					auto value = i.second.getValue();
					//api.getSymbolicVariableFromId(i.first)->setConcreteValue(value);

					uint8 OutputChar = value.convert_to<uint8>();
					//std::cout << "[+] Symbolic variable " << i.first << " " << value << " Value: " << OutputChar << std::endl;
					//std::cout << OutputChar;
					printf("%X => %02X\n", i.first, OutputChar);
				}
				std::cout << std::endl;
			}

			return;
		}
	}

	std::cout << "Return to: " << std::hex << PC << std::endl;
	std::cout << "[+] Emulation done." << std::endl;
}

/*	
	Fold Constant
*/
ast::AbstractNode* ConstantFolding(ast::AbstractNode* node) {

	if (node->isSymbolized()) {
		return node;
	}

	return ast::bv(node->evaluate(), node->getBitvectorSize());
}

void RunBFTSolver() {
	/* Set the arch */
	api.setArchitecture(ARCH_X86);
	
	//Enable modes
	//api.enableMode(ALIGNED_MEMORY, true);
	//api.enableMode(ONLY_ON_SYMBOLIZED, true);
	api.enableSymbolicOptimization(symbolic::ALIGNED_MEMORY, true);
	api.enableSymbolicOptimization(symbolic::ONLY_ON_SYMBOLIZED, true);

	//Load the binary
	LoadBinary("RZ_Attack.exe", 0x00401040);

	//api.addCallback(ConstantFolding);

	//Define a fake stack		
	api.setConcreteRegisterValue(Register(ID_REG_ESP, 0x7fffffff));
	api.setConcreteRegisterValue(Register(ID_REG_EBP, 0x7fffffff));

	//Set regs
	/*api.setConcreteRegisterValue(Register(ID_REG_EAX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_EBX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_ECX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_EDX, 0));
	api.setConcreteRegisterValue(Register(ID_REG_ESI, 0));
	api.setConcreteRegisterValue(Register(ID_REG_EDI, 0));
	api.setConcreteRegisterValue(Register(ID_REG_EFLAGS, 0));*/

	//PASSWORD
	//Password to craft
	/*api.convertMemoryToSymbolicVariable(MemoryAccess(0x00403374, DWORD_SIZE));
	api.convertMemoryToSymbolicVariable(MemoryAccess(0x00403378, DWORD_SIZE));
	api.convertMemoryToSymbolicVariable(MemoryAccess(0x0040337C, DWORD_SIZE));
	api.convertMemoryToSymbolicVariable(MemoryAccess(0x00403380, DWORD_SIZE));
	*/


	// Fixed data
	for (int i = 0; i < 16; i++) {
		//Plainttext
		//api.setConcreteMemoryValue(0x00403384 + i, 0);
		//Password
		api.convertMemoryToSymbolicVariable(MemoryAccess(0x00403374 + i, BYTE_SIZE));

		//Plaintext
		api.convertMemoryToSymbolicVariable(MemoryAccess(0x00403384 + i, BYTE_SIZE));
	}

	//Start the emulation
	//Whole Check
	EmulatePCSimics(0x00401040);
}

int main(int argc, const char **argv) {
	RunBFTSolver();

	return 0;
}