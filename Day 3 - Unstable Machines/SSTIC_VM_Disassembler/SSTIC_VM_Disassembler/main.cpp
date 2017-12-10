#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <emmintrin.h>  
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <bitset>
#include <iostream>
#include <algorithm>
#include <list>

#define BYTE unsigned char
#define WORD unsigned short
#define DWORD unsigned int

const unsigned char BMPTable[168] =
{
	0x78, 0x1C, 0x00, 0x33, 0x1C, 0x04, 0xA1, 0x9C, 0x00, 0xFE, 0x04, 0x1C, 0xAF, 0x04, 0x04, 0xBB,
	0x56, 0x47, 0xFE, 0x0C, 0x00, 0x78, 0x20, 0x01, 0xAF, 0x04, 0x20, 0xBB, 0xED, 0x11, 0xFE, 0x10,
	0x00, 0x78, 0x14, 0x00, 0x78, 0x18, 0x00, 0x33, 0x18, 0x40, 0xA1, 0x57, 0x00, 0xFE, 0x04, 0x10,
	0x85, 0x08, 0x04, 0x32, 0x00, 0xE5, 0xFE, 0x20, 0x00, 0xAF, 0x20, 0x10, 0xFE, 0x04, 0x14, 0x5B,
	0x08, 0x00, 0x2F, 0x96, 0x48, 0xFE, 0x24, 0x00, 0xAF, 0x24, 0x14, 0x13, 0x20, 0x24, 0xAF, 0x0C,
	0x20, 0x7C, 0x88, 0x4B, 0xAF, 0x14, 0x00, 0xFE, 0x04, 0x0C, 0x47, 0x08, 0x04, 0x32, 0xBE, 0x66,
	0xFE, 0x20, 0x00, 0xAF, 0x20, 0x0C, 0xFE, 0x04, 0x14, 0x78, 0x08, 0x0B, 0x2F, 0xAE, 0x58, 0xFE,
	0x24, 0x00, 0xAF, 0x24, 0x14, 0x13, 0x20, 0x24, 0xAF, 0x10, 0x20, 0x78, 0x20, 0x01, 0xAF, 0x18,
	0x20, 0x12, 0x5D, 0x80, 0xFE, 0x08, 0x0C, 0xFE, 0x04, 0x1C, 0xAF, 0x04, 0x04, 0x59, 0xD6, 0xD3,
	0xFE, 0x08, 0x10, 0x78, 0x20, 0x01, 0xAF, 0x04, 0x20, 0x59, 0xD0, 0xD6, 0x78, 0x20, 0x01, 0xAF,
	0x1C, 0x20, 0x12, 0xA2, 0x80, 0xDC, 0x84, 0xD6,
};

//predefs

void ModifyVM_Counter(BYTE VMOpcode);
void CallOpcode(BYTE VMOpcode);
void EncryptOpcode(BYTE VMOpcode);
void CMPAndJmpOpcode(BYTE VMOpcode);
void Finshed(BYTE VMOpcode);
void MaskOpcode(BYTE VMOpcode);
void ReturnOpcode(BYTE VMOpcode);
void Xor_Opcode(BYTE VMOpcode);
void LoadValueFromMemory(BYTE VMOpcode);
void SubOpcode(BYTE VMOpcode);
void LoadBMPConstants(BYTE VMOpcode);
void JumpRelative(BYTE VMOpcode);
void SHR_Opcode(BYTE VMOpcode);
void SHR_Opcode(BYTE VMOpcode);
void AddOpcode(BYTE VMOpcode);
void PushOpcode(BYTE VMOpcode);
void SHL_Opcode(BYTE VMOpcode);
void RegisterOperationDispatcher(BYTE VMOpcode);

void(*OpcodeFuncTable[])(BYTE VMOpcode) = {
	ModifyVM_Counter,
	CallOpcode,
	EncryptOpcode,
	CMPAndJmpOpcode,
	Finshed,
	MaskOpcode,
	ReturnOpcode,
	Xor_Opcode,
	LoadValueFromMemory,
	SubOpcode,
	LoadBMPConstants,
	JumpRelative,
	SHR_Opcode,
	AddOpcode,
	PushOpcode,
	SHL_Opcode,
	RegisterOperationDispatcher,
};

void MoveConstToRegister(BYTE VMOpcode);
void Move_Register_To_Register(BYTE VMOpcode);
void StoreRegisterInMemory(BYTE VMOpcode);
void LoadDWORDFromMemoryByRegValue(BYTE VMOpcode);

void(*VMOpcode_Operations[])(BYTE VMOpcode) = {
	MoveConstToRegister,
	Move_Register_To_Register,
	StoreRegisterInMemory,
	LoadDWORDFromMemoryByRegValue
};

//Some helpers
#define ROTR(x,n) (((x) >> (n % 32)) | ((x) << (32 - (n) % 32)));

#define ROTR_64(x,n) (((x) >> (n % 64)) | ((x) << (64 - (n) % 64)));
#define ROTL_64(x,n) (((x) << (n % 64)) | ((x) >> (64 - (n) % 64)));

//VMStreamHeader
typedef struct VMStreamHeader VMStreamHeader;
struct VMStreamHeader {
	unsigned char Type[4];
	DWORD VMMemoryPtr;
	DWORD VMMemorySize;
	unsigned char * VMOpcodePtr;
	VMStreamHeader *NextVMStreamPtr;
	char Unknown[28];
};

//Const stuff
//unsigned int State = 0x0FDE7F446;
//unsigned int DeObState = 0xF0EFBA;

//unsigned int Obfuscated_VMStreamPtr; <= VMReg[6]
DWORD VMStreamPtr;
DWORD VM_Counter;

/*
Ptr to the VM input Parameter
*/
BYTE *InputParams;

VMStreamHeader *VM_Stream_Ptr = (VMStreamHeader *)-1;
DWORD VM_Regs[8];

size_t getFileSize(FILE *fp) {
	size_t s;

	fseek(fp, 0, SEEK_END);
	s = ftell(fp);
	fseek(fp, 0, SEEK_SET);

	return s;
}

//Some VM helpers 

// Reg is the high 3 Bit
inline BYTE getReg(DWORD Opcode) {
	return Opcode >> 0x1D;
}

// Value is the lower 28 Bit
DWORD getValue(DWORD Opcode) {
	return Opcode & 0x1FFFFFFF;
}

/*
Load the VM into memory :d
*/
void LoadVM() {
	//Dump VMStream
	FILE *fp = fopen("c:\\temp\\unstablemachines\\VMH1.bin", "rb");
	size_t VMH1_Size = getFileSize(fp);
	VM_Stream_Ptr = (VMStreamHeader *)calloc(1, VMH1_Size);
	fread(VM_Stream_Ptr, VMH1_Size, 1, fp);
	fclose(fp);

	VMStreamHeader *SH2;
	fp = fopen("c:\\temp\\unstablemachines\\VMH2.bin", "rb");
	size_t VMH2_Size = getFileSize(fp);
	VM_Stream_Ptr->NextVMStreamPtr = (VMStreamHeader *)calloc(1, VMH2_Size);
	SH2 = (VMStreamHeader *)VM_Stream_Ptr->NextVMStreamPtr;
	fread(SH2, VMH2_Size, 1, fp);
	fclose(fp);

	VMStreamHeader *SH3;
	fp = fopen("c:\\temp\\unstablemachines\\VMH3.bin", "rb");
	size_t VMH3_Size = getFileSize(fp);
	SH2->NextVMStreamPtr = (VMStreamHeader *)calloc(1, VMH3_Size);
	SH3 = (VMStreamHeader *)SH2->NextVMStreamPtr;
	fread(SH3, VMH3_Size, 1, fp);
	fclose(fp);

	//Load opcodes
	fp = fopen("c:\\temp\\unstablemachines\\VM_OP1.bin", "rb");
	size_t VMOpcodeSize = getFileSize(fp);
	//Some cheating
	VM_Stream_Ptr->VMOpcodePtr = (unsigned char *)calloc(1, VMOpcodeSize);
	fread(VM_Stream_Ptr->VMOpcodePtr, VMOpcodeSize, 1, fp);
	fclose(fp);

	//Load opcodes
	fp = fopen("c:\\temp\\unstablemachines\\VM_OP2.bin", "rb");
	VMOpcodeSize = getFileSize(fp);
	//Some cheating
	SH2->VMOpcodePtr = (unsigned char *)calloc(1, VMOpcodeSize);
	fread(SH2->VMOpcodePtr, VMOpcodeSize, 1, fp);
	fclose(fp);

	//Load opcodes
	fp = fopen("c:\\temp\\unstablemachines\\VM_OP3.bin", "rb");
	VMOpcodeSize = getFileSize(fp);
	//Some cheating
	SH3->VMOpcodePtr = (unsigned char *)calloc(1, VMOpcodeSize);
	fread(SH3->VMOpcodePtr, VMOpcodeSize, 1, fp);
	fclose(fp);
}

unsigned char VM_Opcode_Encoding[] =
{
	0x00, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x01, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x02, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x03, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x04, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x05, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x06, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x07, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x08, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x09, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x0A, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x0B, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x0C, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x0D, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x0E, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11,
	0x0F, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x10, 0x8D, 0x49, 0x0
};

/*
Init the VM
*/
void ResetVMAndInitState()
{
	//Reset the VM_Counter
	VM_Counter = 0;
	//printf("VM_Counter = 0;\n");

	//Reset the vm registes
	for (int i = 0; i < 8; i++) {
		VM_Regs[i] = 0;
		//printf("VM_Regs_%i = 0;\n", i);
	}

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Ptr->Type[0] == 133) {

			//printf("VMStackPtr = 0x%08X;\n", Ptr->VMMemoryPtr);
			VMStreamPtr = (DWORD)Ptr->VMMemoryPtr;
		}
		else if (Ptr->Type[0] == 254) {
			//printf("VM_Regs_7 = 0x%08X;\n", Ptr->VMMemoryPtr + 104);
			//Set Stack Ptr
			VM_Regs[7] = (DWORD)(Ptr->VMMemoryPtr + 104);
		}
	}
}

inline DWORD LoadDWORD(VMStreamHeader *VMStreamStruct, int Ptr)
{
	return  *(DWORD *)(VMStreamStruct->VMOpcodePtr + Ptr);
}

inline DWORD WriteDWORD(VMStreamHeader *VMStreamStruct, int MemoryAddr, int Value)
{
	*(DWORD *)(VMStreamStruct->VMOpcodePtr + MemoryAddr) = Value;

	return Value;
}

inline BYTE LoadNextByteFromVMStream()
{
	DWORD Location = VMStreamPtr;

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *)0xFFFFFFFF) {

			VMStreamPtr = Location + 1;
			return LoadDWORD(Ptr, Location - (DWORD)Ptr->VMMemoryPtr);
		}
	}

	return -1;
}


DWORD LoadNextDWORDFromStream()
{
	DWORD Location = VMStreamPtr;

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *)0xFFFFFFFF) {			

			VMStreamPtr = Location + 4;

			return  LoadDWORD(Ptr, Location - (DWORD)Ptr->VMMemoryPtr);
		}
	}

	return -1;
}


unsigned int CalculateChecksum(unsigned char *a1, size_t dwBytes)
{
	DWORD Result = 0x0957cb0d;
	for (size_t i = 0; i < dwBytes; ++i)
	{
		DWORD t = a1[i] ^ 0x4B;
		Result = (Result ^ t) << 5 | ((Result ^ t) >> 27);
	}

	//Apply ROP operations
	if (dwBytes == 0x24) {
		Result = Result + 0xE9A356C1; //0x1d51a751
		Result = Result ^ 0xFFFEFFFF; //0xe2af58ae
		Result = ROTR(Result, 0x2A); //0x2bb8abd6
		Result = Result - 0xFFFEFFFF; //0x2bb9abd7
		Result = Result + 0x79fa2185;
	}

	return Result;
}

void ModifyVM_Counter(BYTE VMOpcode) {
	if (VM_Regs[0] & 0x8000) {

		printf("VM_Regs_0 = VM_Regs_0  & 0x7FFF;\n");
		printf("VM_Counter -= VM_Regs_0;\n");		
	}
	else {
		printf("VM_Counter += VM_Regs_0;\n");		
	}
};

std::list<unsigned int> Calls;
std::list<unsigned int> Visited;

bool isVisited(unsigned int D) {	
	for (auto V : Visited) {
		if (V == D)
		{
			return true;			
		}
	}
	return false;
}

void CallOpcode(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();
	DWORD esi = (VMOpcode & 0x7) << 8;
	DWORD edi = eax + esi;
	
	if ((edi & 0x400) != 0) {
		edi &= 0x3FF;
				
		printf("call - 0x%08X\n", VMStreamPtr - (edi + 2));		

		if (isVisited(VMStreamPtr - (edi + 2)) == false) {
			Calls.push_back(VMStreamPtr - (edi + 2));
		}
	}
	else {
		printf("call + 0x%08X\n", VMStreamPtr +  edi + 2);
		if (isVisited(VMStreamPtr + (edi + 2)) == false) {
			Calls.push_back(VMStreamPtr + (edi + 2));
		}
	}
};

void EncryptOpcode(BYTE VMOpcode) {				
	printf("VM_Regs_0 = (( Load(VM_Regs_7 + 4) ) << 4) ^ (( Load(VM_Regs_7 + 4) ) >> 5);\n");
};

/*
	VM_Opcode3 Not needed for rebuild
	Here we have the CreateFileA call ... very strange
*/
void CMPAndJmpOpcode(BYTE VMOpcode) {
	DWORD esi = VMOpcode & 1;
	if (esi == 1) {
		DWORD Op = LoadNextDWORDFromStream();
		DWORD R1 = VM_Regs[(Op >> 0x12) & 7];
		DWORD R2 = VM_Regs[Op >> 0x1D];		

		printf("CMP VM_Regs_%i == VM_Regs_%i\n", (Op >> 0x12) & 7, (Op >> 0x1D));				
		DWORD eax = ((Op >> 6) & 0x7FF);			
		printf("\t\t\tIF True JMP + 0x%08X;\n", VMStreamPtr + eax);					
	}
	else if (esi == 0) {
		DWORD eax = LoadNextDWORDFromStream();
		DWORD esi = eax;
		eax = (esi >> 0x13) & 0xFF;
		
		printf("CMP VM_Regs_%i == 0x%02X\n", esi >> 0x1D, eax);		
		esi = (esi >> 6) & 0x7FF;

		if (esi & 0x400) {
			esi = esi & 0x3FF;				
			printf("\t\t\tIF True JMP - 0x%08X;\n", VMStreamPtr - esi);
		}
		else {				
			printf("\t\t\tIf True JMP + 0x%08X;\n", VMStreamPtr + esi);
		}		
	}
	else {
		printf("NOP");
	}
};

void MaskOpcode(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();

	for (DWORD ebx = 0; ebx < 32; ebx++) {
		DWORD edx = eax >> ebx;

		if ((edx & 1) == 0) {
			int Reg = VMOpcode & 7;			
			
			printf("VM_Regs_%i = VM_Regs_%i & ~(1 << %i);\n", Reg, Reg, ebx);
		}
	}
};

void ReturnOpcode(BYTE VMOpcode) {	
	printf("Return;\n");
};

void Xor_Opcode(BYTE VMOpcode) {
	DWORD esi = (VMOpcode >> 1) & 1;
	if (esi == 1) {
		DWORD eax = LoadNextByteFromVMStream();

		int Reg1 = (eax >> 1) & 7;
		int Reg2 = (eax >> 4) & 7;

		DWORD a = VM_Regs[Reg1];
		DWORD b = VM_Regs[Reg2];
		
		printf("VM_Regs_%i = VM_Regs_%i ^ VM_Regs_%i;\n", Reg2, Reg1, Reg2);
	}
	else if (esi == 0) {
		DWORD eax = LoadNextDWORDFromStream();

		int Reg = eax >> 0x1D;
		DWORD Value = eax & 0x1FFFFFFF;

		printf("VM_Regs_%i = VM_Regs_%i ^ 0x%08X;\n", Reg, Reg, Value);
	}
	else {
		printf("NOP\n");
	}
};

void LoadValueFromMemory(BYTE VMOpcode) {	
	printf("VM_Regs_0 = CalculateChecksum(*Stack, VM_Regs[0] * 4);\n");
};

void SubOpcode(BYTE VMOpcode) {
	DWORD esi = (VMOpcode >> 1) & 1;
	if (esi == 0) {
		DWORD eax = LoadNextDWORDFromStream();

		int Reg = eax >> 0x1D;
		DWORD Value = eax & 0x1FFFFFFF;
		
		printf("VM_Regs_%i = VM_Regs_%i - 0x%08X;\n", Reg, Reg, Value);
	}
	else if (esi == 1) {
		DWORD eax = LoadNextByteFromVMStream();

		int Reg1 = (eax >> 4) & 7;
		int Reg2 = (eax >> 1) & 7;

		printf("VM_Regs_%i = VM_Regs_%i - VM_Regs_%i;\n", Reg1, Reg1, Reg2);

	}
};

void LoadBMPConstants(BYTE VMOpcode) {
	//int Counter = VM_Regs[0];

	printf("for (int i=0;i<VM_Regs_0;i++) {\n");			
	printf("\tVM_Regs[i] = LoadBMPConstants(i);\n");		
	printf("\tVM_Counter++\n");
	printf("}\n");

};

void JumpRelative(BYTE VMOpcode) {
	DWORD edx = LoadNextByteFromVMStream();

	edx = edx + ((VMOpcode & 7) << 8);

	if (edx & 0x400) {				
			printf("JMP - 0x%08X;\n", VMStreamPtr - (edx & 0x3FF));
	}
	else {		
			printf("JMP + 0x%08X;\n", VMStreamPtr + edx);
	}
};

void SHR_Opcode(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();

	int Reg = VMOpcode & 7;
	int Reg2 = (eax >> 3) & 7;

	printf("VM_Regs_%i = VM_Regs_%i >> (VM_Regs_%i & 0xFF);\n", Reg, Reg, Reg2);
};


void AddOpcode(BYTE VMOpcode) {
	DWORD esi = (VMOpcode >> 1) & 1;
	if (esi == 0) {
		DWORD Op = LoadNextDWORDFromStream();
		BYTE Reg = getReg(Op);
		DWORD Value = getValue(Op);
		
		printf("VM_Regs_%i = 0x%08X + VM_Regs_%i;\n", Reg, Value, Reg);
	}
	else if (esi == 1) {
		DWORD eax = LoadNextByteFromVMStream();

		int Reg1 = (eax >> 4) & 7;
		int Reg2 = (eax >> 1) & 7;

		printf("VM_Regs_%i = VM_Regs_%i + VM_Regs_%i;\n", Reg1, Reg1, Reg2);

	}
};

void PushOpcode(BYTE VMOpcode) {
	VMOpcode = (VMOpcode >> 2) & 1;
	if (VMOpcode == 0) {
		DWORD eax = LoadNextDWORDFromStream();		
		printf("Push(0x%08X);\n", eax);	
	}
	else if (VMOpcode == 1) {
		DWORD eax = LoadNextByteFromVMStream();
		int Reg = (eax >> 3) & 7;		
		printf("Push(VM_Regs_%i);\n", Reg);

	}
};

void SHL_Opcode(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();

	int Reg = VMOpcode & 7;

	printf("VM_Regs_%i = VM_Regs_%i << 0x%08X;\n", Reg, Reg, eax);					
};

void RegisterOperationDispatcher(BYTE VMOpcode) {
	BYTE esi = VMOpcode & 3;
	if (esi > 3) {
		return;
	}
	(*VMOpcode_Operations[esi])(VMOpcode);
};

//VM Opcode16 operations
void MoveConstToRegister(BYTE VMOpcode) {
	DWORD V16Op = LoadNextDWORDFromStream();

	int Reg = getReg(V16Op);
	DWORD Value = getValue(V16Op);
	
	printf("VM_Regs_%i = 0x%08X;\n", Reg, Value);	
}

void Move_Register_To_Register(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();

	int Reg1 = eax >> 4 & 7;
	int Reg2 = eax >> 1 & 7;


	printf("VM_Regs_%i = VM_Regs_%i;\n", Reg1, Reg2);
}

void StoreRegisterInMemory(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();

	int Reg1 = (eax >> 1) & 7;
	int Reg2 = (eax >> 4) & 7;

	DWORD edx = VM_Regs[Reg1];
	DWORD ecx = VM_Regs[Reg2];

	printf("Store(VM_Regs_%i, VM_Regs_%i);\n", Reg2, Reg1);
}

void LoadDWORDFromMemoryByRegValue(BYTE VMOpcode) {
	BYTE eax = LoadNextByteFromVMStream();

	int Reg1 = (eax >> 1) & 7;
	int Reg2 = (eax >> 4) & 7;

	DWORD ecx = VM_Regs[Reg1];	
		
	printf("VM_Regs_%i = Load(VM_Regs_%i);\n", Reg2, Reg1);	
}

void Finshed(BYTE VMOpcode) {
	printf("Leave VM\n");
};


int main(int argc, char **argv) {	
	LoadVM();
	ResetVMAndInitState();
	for (;;) {
		printf("0x%08X ", VMStreamPtr);
		if (VMStreamPtr == 0x05571C57) {
			int i = 1;
		}

		BYTE VMOpcode = LoadNextByteFromVMStream();

		BYTE VMOpcode_Ptr = VMOpcode & 0xF8;

		if (VMOpcode_Ptr > 0xE8) {
			if (Calls.size() > 0) {
				VMStreamPtr = Calls.front();
				printf("Function 0x%08X\n", VMStreamPtr);
				Visited.push_front(VMStreamPtr),
				Calls.pop_front();
			}
			else {
				break;
			}
		}		

		BYTE Opcode = VM_Opcode_Encoding[VMOpcode_Ptr];
		(*OpcodeFuncTable[Opcode])(VMOpcode);		
	}

	return 0;
}