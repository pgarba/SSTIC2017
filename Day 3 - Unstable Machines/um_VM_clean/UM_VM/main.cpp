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
#include "TaintEngine.h"

#include "BMPTable.h"

#define BYTE unsigned char
#define WORD unsigned short
#define DWORD unsigned int

uint64_t swap_uint64(uint64_t val)
{
	val = ((val << 8) & 0xFF00FF00FF00FF00ULL) | ((val >> 8) & 0x00FF00FF00FF00FFULL);
	val = ((val << 16) & 0xFFFF0000FFFF0000ULL) | ((val >> 16) & 0x0000FFFF0000FFFFULL);
	return (val << 32) | (val >> 32);
}

//The new taint engine :D
TaintEngine TE;
bool isLoop = false;

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
unsigned int DeObState = 0xF0EFBA;

//unsigned int Obfuscated_VMStreamPtr; <= VMReg[6]
DWORD VMStreamPtr;
DWORD VM_Counter;

/*
	Ptr to the VM input Parameter
*/
BYTE *InputParams;

VMStreamHeader *VM_Stream_Ptr = (VMStreamHeader *) -1;
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
	VM_Stream_Ptr = (VMStreamHeader *) calloc(1, VMH1_Size);
	fread(VM_Stream_Ptr, VMH1_Size, 1, fp);
	fclose(fp);

	VMStreamHeader *SH2;
	fp = fopen("c:\\temp\\unstablemachines\\VMH2.bin", "rb");
	size_t VMH2_Size = getFileSize(fp);
	VM_Stream_Ptr->NextVMStreamPtr = (VMStreamHeader *) calloc(1, VMH2_Size);
	SH2 = (VMStreamHeader *) VM_Stream_Ptr->NextVMStreamPtr;
	fread(SH2, VMH2_Size, 1, fp);
	fclose(fp);

	VMStreamHeader *SH3;
	fp = fopen("c:\\temp\\unstablemachines\\VMH3.bin", "rb");
	size_t VMH3_Size = getFileSize(fp);
	SH2->NextVMStreamPtr = (VMStreamHeader *) calloc(1, VMH3_Size);
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
	printf("VM_Counter = 0;\n");

	//Reset the vm registes
	for (int i = 0; i < 8; i++) {
		VM_Regs[i] = 0;
		printf("VM_Regs_%i = 0;\n", i);
	}

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *) 0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Ptr->Type[0] == 133) {
			
			printf("VMStackPtr = 0x%08X;\n", Ptr->VMMemoryPtr);
			VMStreamPtr = (DWORD) Ptr->VMMemoryPtr;
		}
		else if (Ptr->Type[0] == 254) {			
			printf("VM_Regs_7 = 0x%08X;\n", Ptr->VMMemoryPtr + 104);
			VM_Regs[7] = (DWORD) (Ptr->VMMemoryPtr + 104);
		}
	}
}

inline DWORD LoadDWORD(VMStreamHeader *VMStreamStruct, int Ptr)
{
	return  *(DWORD *) (VMStreamStruct->VMOpcodePtr + Ptr);		
}

inline DWORD WriteDWORD(VMStreamHeader *VMStreamStruct, int MemoryAddr, int Value)
{
	*(DWORD *)(VMStreamStruct->VMOpcodePtr + MemoryAddr) = Value;

	return Value;
}

inline BYTE StoreDWORDInMemory(DWORD MyVMStreamPtr, DWORD Value)
{
	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (MyVMStreamPtr < (DWORD)Ptr->VMMemoryPtr || Ptr->NextVMStreamPtr == (VMStreamHeader *) 0xFFFFFFFF) {
			return WriteDWORD(Ptr, MyVMStreamPtr - (DWORD)Ptr->VMMemoryPtr, Value);
		}
	}

	return (BYTE) -1;
}

DWORD LoadDWORDFromMemory(unsigned int Location)
{
	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *)0xFFFFFFFF) {
			return LoadDWORD(Ptr, Location - (DWORD)Ptr->VMMemoryPtr);
		}
	}

	return -1;
}

inline BYTE LoadNextByteFromVMStream()
{	
	DWORD Location = VMStreamPtr;

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ( (DWORD) Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *) 0xFFFFFFFF) {
			if (isLoop == false) {
				//printf("VMStackPtr = VMStackPtr + 1;\n");
			}

			VMStreamPtr = Location + 1;
			return LoadDWORD(Ptr, Location - (DWORD)Ptr->VMMemoryPtr);			
		}
	}

	return -1;
}


DWORD PushDWORDOnStack(int Value)
{
	DWORD Location = VM_Regs[7] - 4;	
	VM_Regs[7] = Location;

	if (isLoop == false) {
		if (TE.isTaintedReg(7)) {
			printf("VM_Regs_7 = VM_Regs_7 - 4;\n");
		}
		else {
			printf("VM_Regs_7 = 0x%08X;\n", Location);
		}
	}

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *) 0xFFFFFFFF) {
			return WriteDWORD(Ptr, Location - (DWORD)Ptr->VMMemoryPtr, Value);
		}
	}

	return -1;
}

DWORD PopDWORDFromStack()
{
	DWORD Location = VM_Regs[7];

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *)0xFFFFFFFF) {

			if (isLoop == false) {
				printf("VM_Regs_7 = 0x%08X;\n", Location + 4);
			}

			//Remove taint
			TE.removeReg(7);

			VM_Regs[7] = Location + 4;
			return LoadDWORD(Ptr, Location - (DWORD)Ptr->VMMemoryPtr);
		}
	}

	return -1;
}

DWORD LoadNextDWORDFromStream()
{
	DWORD Location = VMStreamPtr;

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Location < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *) 0xFFFFFFFF) {
			if (isLoop == false) {
				//printf("VMStackPtr = 0x%08X;\n", Location + 4);
			}

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
		Result =  (Result ^ t) << 5 | ((Result ^ t) >> 27);
	}

	//Apply ROP operations
	if (dwBytes == 0x24) {
		Result = Result + 0xE9A356C1; //0x1d51a751
		Result = Result ^ 0xFFFFFFFF; //0xe2af58ae  0xFFFEFFFF => Only if being debug !!!!!
		Result = ROTR(Result, 0x2A); //0x2bb8abd6
		Result = Result - 0xFFFFFFFF; //0x2bb9abd7 0xFFFEFFFF => Only if being debug !!!!!
		Result = Result + 0x79fa2185;		
	}
	
	return Result;
}

void ModifyVM_Counter(BYTE VMOpcode) {		
	if (VM_Regs[0] & 0x8000) {

		printf("VM_Regs_0 = VM_Regs_0  & 0x7FFF;\n");
		VM_Regs[0] = VM_Regs[0] & 0x7FFF;			

		printf("VM_Counter -= VM_Regs_0;\n");
		//This should always be const		
		VM_Counter -= VM_Regs[0];
		//printf("VM_Counter = 0x%08X;\n", VM_Counter);
	}
	else {
		printf("VM_Counter += VM_Regs_0;\n");
		//Should always be const
		VM_Counter += VM_Regs[0];
		//printf("VM_Counter = 0x%08X;\n", VM_Counter);
	}
};

void CallOpcode(BYTE VMOpcode) {	
	DWORD eax = LoadNextByteFromVMStream();
	DWORD esi = (VMOpcode & 0x7) << 8;	
	DWORD edi = eax + esi;	

	DWORD ecx = VMStreamPtr;	
	PushDWORDOnStack(ecx);
		
	if ((edi & 0x400) != 0) {
		edi &= 0x3FF;		

		if (isLoop == false) {
			//printf("VMStackPtr = VMStackPtr - 0x%08X;\n", edi);
			//printf("//call Function F_%08X\n", VMStreamPtr - edi);
		}

		VMStreamPtr = VMStreamPtr - edi;
	}
	else {				
		if (isLoop == false) {
			//printf("VMStackPtr = VMStackPtr + 0x%08X;\n", edi);
			//printf("//call Function F_%08X\n", VMStreamPtr + edi);
		}

		VMStreamPtr = VMStreamPtr + edi;
	}	
};

void EncryptOpcode(BYTE VMOpcode) {		
	DWORD ecx = VM_Regs[7];			

	DWORD a = LoadDWORDFromMemory(ecx + 4);	

	DWORD Const = ((a) << 4) ^ ((a) >> 5);

	//printf("VM_Regs_0 = (( Load(VM_Regs_7 + 4) ) << 4) ^ (( Load(VM_Regs_7 + 4) ) >> 5); // a= %08X Const = %08X VM_Regs_7 = %08X \n", a, Const, ecx + 4);
	if (isLoop == false) {
		if (TE.isTaintedReg(7)) {
			printf("VM_Regs_0 = (( Load(VM_Regs_7 + 4) ) << 4) ^ (( Load(VM_Regs_7 + 4) ) >> 5); // a= %08X Const = %08X VM_Regs_7 = %08X \n", a, Const, ecx + 4);
		}
		else {
			if (TE.isTaintedMemory(ecx + 4)) {
				printf("VM_Regs_0 = (( Load(0x%08X) ) << 4) ^ (( Load(0x%08X) ) >> 5); // %08X\n", ecx + 4, ecx + 4, Const);
				TE.addReg(0);
			}
			else {
				//should never happen
				printf("Tainting fails!!!\n");
				exit(0);
			}
		}
	}
		
	VM_Regs[0] = Const;
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
		//if (isLoop == false) {
			//printf("//CMP VM_Regs_%i == VM_Regs[%i] => %08X %08X %c %c\n", (Op >> 0x12) & 7, (Op >> 0x1D), R1, R2, (char)R1, (char)R2);
		//}
		if (R2 == R1) {
			DWORD eax = VMStreamPtr + ((Op >> 6) & 0x7FF);
			if (isLoop == false) {
				//printf("//VMStackPtr += 0x%08X\n", ((Op >> 6) & 0x7FF));
			}
			//printf("VMStackPtr = 0x%08X;\n", eax);

			VMStreamPtr = eax;
		}
	}
	else if (esi == 0) {
		DWORD eax = LoadNextDWORDFromStream();
		DWORD esi = eax;		
		eax = (esi >> 0x13) & 0xFF;
				
		DWORD edx = VM_Regs[esi >> 0x1D];		
		//if (isLoop == false) {
			//printf("//CMP VM_Regs[%i] == 0x%08X => %08X %c %c\n", esi >> 0x1D, eax, edx, edx, esi);
		//}
		if (edx == eax) {			
			esi = (esi >> 6) & 0x7FF;		
			
			if (esi & 0x400) {
				esi = esi & 0x3FF;
				if (isLoop == false) {
					//printf("VMStackPtr = VMStackPtr - 0x%08X;\n", esi);
				}
				VMStreamPtr = VMStreamPtr - esi;
			}
			else {
				if (isLoop == false) {
					//printf("VMStackPtr = VMStackPtr + 0x%08X;\n", esi);
				}
				VMStreamPtr = VMStreamPtr + esi;
			}
		}
	}
};

void MaskOpcode(BYTE VMOpcode) {	
	DWORD eax = LoadNextByteFromVMStream();
	
	for (DWORD ebx = 0; ebx < 32; ebx++) {				
		DWORD edx = eax >> ebx;

		if ((edx & 1) == 0) {			
			int Reg = VMOpcode & 7;
			edx = VM_Regs[Reg];
			DWORD Const = edx & ~(1 << ebx);

			if (isLoop == false) {
				if (TE.isTaintedReg(edx) == true) {
					printf("VM_Regs_%i = VM_Regs_%i & ~(1 << %i);// 0x%08X\n", Reg, Reg, ebx, Const);
				}
				else {
					//replace with const
					printf("VM_Regs_%i = 0x%08X;\n", Reg, Const);
				}			
			}

			VM_Regs[Reg] = Const;
		}
	}
};

void ReturnOpcode(BYTE VMOpcode) {	
	VMStreamPtr = PopDWORDFromStack();	
};

void Xor_Opcode(BYTE VMOpcode) {	
	DWORD esi = (VMOpcode >> 1) & 1;
	if (esi == 1) {
		DWORD eax = LoadNextByteFromVMStream();		

		int Reg1 = (eax >> 1) & 7;
		int Reg2 = (eax >> 4) & 7;	

		DWORD a = VM_Regs[Reg1];
		DWORD b = VM_Regs[Reg2];	

		if (isLoop == false) {
			if (TE.isTaintedReg(Reg1) && TE.isTaintedReg(Reg2)) {
				printf("VM_Regs_%i = VM_Regs_%i ^ VM_Regs_%i;\n", Reg2, Reg1, Reg2);
			}
			else if (TE.isTaintedReg(Reg1) == false && TE.isTaintedReg(Reg2)) {
				printf("VM_Regs_%i = 0x%08X ^ VM_Regs_%i;\n", Reg2, a, Reg2);
			}
			else if (TE.isTaintedReg(Reg1) == true && TE.isTaintedReg(Reg2) == false) {
				printf("VM_Regs_%i = VM_Regs_%i ^ 0x%08X;\n", Reg2, Reg1, b);
				TE.addReg(Reg2);
			}
			else {
				printf("VM_Regs_%i = 0x%08X;\n", Reg2, a ^ b);
			}
		}

		VM_Regs[Reg2] = (a ^ b);
	}
};

void LoadValueFromMemory(BYTE VMOpcode) {	
	DWORD *Memory;	
	DWORD PageCount = VM_Regs[0];
	DWORD Page = VM_Regs[7];

	for (VMStreamHeader *Ptr = VM_Stream_Ptr; Ptr != (VMStreamHeader *)0xFFFFFFFF; Ptr = (VMStreamHeader *)Ptr->NextVMStreamPtr) {
		if (Page < ((DWORD)Ptr->VMMemoryPtr + Ptr->VMMemorySize) || Ptr->NextVMStreamPtr == (VMStreamHeader *)0xFFFFFFFF) {
			Memory = (DWORD *) ((BYTE *) Ptr->VMOpcodePtr + (Page - (DWORD) Ptr->VMMemoryPtr));
			break;
		}
	}	

	DWORD Checksum = CalculateChecksum((unsigned char *)Memory, PageCount * 4);

	if (isLoop == false) {
		//untained Reg0
		TE.removeReg(0);
		printf("VM_Regs_0 = 0x%08X;\n", Checksum);
	}

	VM_Regs[0] = Checksum;
};

void SubOpcode(BYTE VMOpcode) {
	DWORD esi = (VMOpcode >> 1) & 1;
	if (esi == 0) {
		DWORD eax = LoadNextDWORDFromStream();		

		int Reg = eax >> 0x1D;
		DWORD Value = eax & 0x1FFFFFFF;

		if (isLoop == false) {
			if (TE.isTaintedReg(Reg)) {
				printf("VM_Regs_%i = VM_Regs_%i - 0x%08X;\n", Reg, Reg, Value);
			}
			else {
				printf("VM_Regs_%i = 0x%08X;\n", Reg, VM_Regs[Reg] - Value);
			}
		}

		VM_Regs[Reg] = VM_Regs[Reg] - Value;
	}
};

void LoadBMPConstants(BYTE VMOpcode) {	
	int Counter = VM_Regs[0];
		
	for (int i = 0; i < Counter; i++) {
		int Reg = 1 + i;
		
		DWORD Const = BMPTable[VM_Counter++];

		if (isLoop == false) {
			//untained reg
			TE.removeReg(Reg);
			printf("VM_Regs_%i = 0x%08X; //BMP Const\n", Reg, Const);
		}

		VM_Regs[Reg] = Const;
	}	
};

void JumpRelative(BYTE VMOpcode) {	
	DWORD edx = LoadNextByteFromVMStream();	
			
	edx = edx + ((VMOpcode & 7) << 8);
		
	if (edx & 0x400) {				
		VMStreamPtr = VMStreamPtr - (edx & 0x3FF);
		if (isLoop == false) {
			//printf("VMStackPtr = VMStackPtr - 0x%08X;\n", edx & 0x3FF);
		}
	}
	else {
		if (isLoop == false) {
			//printf("VMStackPtr = VMStackPtr - 0x%08X;\n", edx);
		}
		VMStreamPtr = VMStreamPtr + edx;
	}		
};

void SHR_Opcode(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();	
	
	int Reg = VMOpcode & 7;
	int Reg2 = (eax >> 3) & 7;

	bool Reg1Taint = TE.isTaintedReg(Reg);
	bool Reg2Taint = TE.isTaintedReg(Reg2);
	
	if (isLoop == false) {
		if (Reg1Taint && Reg2Taint) {
			printf("VM_Regs_%i = VM_Regs_%i >> (VM_Regs_%i & 0xFF);\n", Reg, Reg, Reg2);
		}
		else if (Reg1Taint == false && Reg2Taint) {
			printf("VM_Regs_%i = 0x%08X >> (VM_Regs_%i & 0xFF);\n", Reg, VM_Regs[Reg], Reg2);
			TE.addReg(Reg);
		}
		else if (Reg1Taint == true && Reg2Taint == false) {
			printf("VM_Regs_%i = VM_Regs_%i >> 0x%08X;\n", Reg, Reg, VM_Regs[Reg2] & 0xFF);
		}
		else {
			printf("VM_Regs_%i = ;\n", VM_Regs[Reg] >> (VM_Regs[Reg2] & 0xFF));
		}
	}

	VM_Regs[Reg] = VM_Regs[Reg] >> (VM_Regs[Reg2] & 0xFF);
};


void AddOpcode(BYTE VMOpcode) {
	DWORD esi = (VMOpcode >> 1) & 1;
	if (esi == 0) {
		DWORD Op = LoadNextDWORDFromStream();
		BYTE Reg = getReg(Op);
		DWORD Value = getValue(Op);

		if (isLoop == false) {
			if (TE.isTaintedReg(Reg)) {
				printf("VM_Regs_%i = 0x%08X + VM_Regs_%i;\n", Reg, Value, Reg);
			}
			else {
				printf("VM_Regs_%i = 0x%08X;\n", Reg, Value + VM_Regs[Reg]);
			}
		}

		//Add Reg + Const			
		VM_Regs[Reg] = Value + VM_Regs[Reg];
	}
	else if (esi == 1) {		
		DWORD eax = LoadNextByteFromVMStream();					

		int Reg1 = (eax >> 4) & 7;
		int Reg2 = (eax >> 1) & 7;

		bool Reg1Taint = TE.isTaintedReg(Reg1);
		bool Reg2Taint = TE.isTaintedReg(Reg2);
		
		if (isLoop == false) {

			if (Reg1Taint && Reg2Taint) {
				printf("VM_Regs_%i = VM_Regs_%i + VM_Regs_%i;\n", Reg1, Reg1, Reg2);
			}
			else if (Reg1Taint == false && Reg2Taint) {
				printf("VM_Regs_%i = 0x%08X + VM_Regs_%i;\n", Reg1, VM_Regs[Reg1], Reg2);
				TE.addReg(Reg1);
			}
			else if (Reg1Taint == true && Reg2Taint == false) {
				printf("VM_Regs_%i = VM_Regs_%i +  0x%08X;\n", Reg1, Reg1, VM_Regs[Reg2]);
			}
			else {
				printf("VM_Regs_%i = 0x%08X;\n", Reg1, VM_Regs[Reg1] + VM_Regs[Reg2]);
			}

		}

		VM_Regs[Reg1] = VM_Regs[Reg1] + VM_Regs[Reg2];
	}
};

void PushOpcode(BYTE VMOpcode) {	
	VMOpcode = (VMOpcode >> 2) & 1;
	if (VMOpcode == 0) {
		DWORD eax = LoadNextDWORDFromStream();
		PushDWORDOnStack(eax);
		if (isLoop == false) {
			if (TE.isTaintedReg(7)) {
				printf("Store(VM_Regs_7, 0x%08X); // VM_Regs_7 %08X\n", eax, VM_Regs[7]);
				//TE.removeMemory(VM_Regs[7]);
			}
			else {
				printf("Store(0x%08X, 0x%08X); // VM_Regs_7 %08X\n", VM_Regs[7], eax, VM_Regs[7]);
				//TE.removeMemory(VM_Regs[7]);
			}
		}
	}
	else if (VMOpcode == 1) {
		DWORD eax = LoadNextByteFromVMStream();				
		int Reg = (eax >> 3) & 7;
		PushDWORDOnStack(VM_Regs[Reg]);

		bool Reg1Taint = TE.isTaintedReg(Reg);		

		if (isLoop == false) {
			if (Reg1Taint) {
				printf("Store(VM_Regs_7, VM_Regs_%i); // VM_Regs_7 %08X RegValue %08X\n", Reg, VM_Regs[7], VM_Regs[Reg]);
				TE.addMemory(VM_Regs[7]);
			}
			else {
				printf("Store(VM_Regs_7, 0x%08X); // VM_Regs_7 %08X RegValue %08X\n", VM_Regs[Reg], VM_Regs[7], VM_Regs[Reg]);
				TE.removeMemory(VM_Regs[7]);
			}
		}
	}
};

void SHL_Opcode(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();	

	int Reg = VMOpcode & 7;

	if (isLoop == false) {
		if (TE.isTaintedReg(Reg)) {
			printf("VM_Regs_%i = VM_Regs_%i << 0x%08X;\n", Reg, Reg, eax);
		}
		else {
			printf("VM_Regs_%i = 0x%08X;\n", Reg, VM_Regs[Reg] << eax);
		}
	}

	VM_Regs[Reg] = VM_Regs[Reg] << eax;
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

	if (isLoop == false) {
		printf("VM_Regs_%i = 0x%08X;\n", Reg, Value);
	}
	
	TE.removeReg(Reg);

	VM_Regs[Reg] = Value;
}

void Move_Register_To_Register(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();	

	int Reg1 = eax >> 4 & 7;
	int Reg2 = eax >> 1 & 7;

	if (isLoop == false) {
		if (TE.isTaintedReg(Reg2)) {
			printf("VM_Regs_%i = VM_Regs_%i; // %08X %08X\n", Reg1, Reg2, VM_Regs[Reg1], VM_Regs[Reg2]);
			TE.addReg(Reg1);
		}
		else {
			printf("VM_Regs_%i = 0x%08X; // %08X\n", Reg1, VM_Regs[Reg2], VM_Regs[Reg1]);
			TE.removeReg(Reg1);
		}
	}

	VM_Regs[Reg1] = VM_Regs[Reg2];
}

void StoreRegisterInMemory(BYTE VMOpcode) {
	DWORD eax = LoadNextByteFromVMStream();	

	int Reg1 = (eax >> 1) & 7;
	int Reg2 = (eax >> 4) & 7;

	DWORD edx = VM_Regs[Reg1];
	DWORD ecx = VM_Regs[Reg2];
	
	bool Reg1Taint = TE.isTaintedReg(Reg1);
	bool Reg2Taint = TE.isTaintedReg(Reg2);

	if (isLoop == false) {
		if (Reg1Taint && Reg2Taint) {
			printf("Store(VM_Regs_%i, VM_Regs_%i); // %08X %08X\n", Reg2, Reg1, ecx, edx);
			TE.addMemory(VM_Regs[Reg2]);
		}
		else if (Reg2Taint == false && Reg1Taint) {
			printf("Store(0x%08X, VM_Regs_%i); // %08X %08X\n", VM_Regs[Reg2], Reg1, ecx, edx);
			TE.addMemory(VM_Regs[Reg2]);
		}
		else {
			printf("Store(VM_Regs_%i, 0x%08X); // %08X %08X\n", Reg2, VM_Regs[Reg1], ecx, edx);
			TE.removeMemory(VM_Regs[Reg2]);
		}
	}

	StoreDWORDInMemory(ecx, edx);
}

void LoadDWORDFromMemoryByRegValue(BYTE VMOpcode) {
	BYTE eax = LoadNextByteFromVMStream();	
	
	int Reg1 = (eax >> 1) & 7;
	int Reg2 = (eax >> 4) & 7;

	DWORD ecx = VM_Regs[Reg1];	

	DWORD Value = LoadDWORDFromMemory(ecx);

	if (isLoop == false) {
		if (TE.isTaintedReg(Reg1)) {
			printf("VM_Regs_%i = Load(VM_Regs_%i); // %08X\n", Reg2, Reg1, Value);
			TE.addReg(Reg2);
		}
		else {
			if (TE.isTaintedMemory(ecx)) {
				printf("VM_Regs_%i = Load(0x%08X); // %08X\n", Reg2, ecx, Value);
				TE.addReg(Reg2);
			}
			else {
				printf("VM_Regs_%i = 0x%08X; // %08X\n", Reg2, Value, Value);
				TE.removeMemory(ecx);
			}
		}
	}

	VM_Regs[Reg2] = Value;
}

void Finshed(BYTE VMOpcode) {
	printf("I: ");
	for (int i = 0; i < 0x20; i++) {		
		printf("%02X", InputParams[i]);
	}
	printf("\n");

	//Do the fixup :D
	uint64_t rcx = 0xfa34ae1002547b89;
	uint64_t rdx = 0x756af83de1ffe263;

	rdx = ~rdx;	
	rcx = swap_uint64(rcx);

	uint64_t r8 = ((uint64_t *)InputParams)[0];
	r8 = r8 ^ rcx;
	r8 = r8 + rdx;
	((uint64_t *)InputParams)[0] = r8;

	r8 = ((uint64_t *)InputParams)[1];
	r8 = r8 ^ rdx;
	r8 = swap_uint64(r8);
	r8 = r8 - rcx;
	((uint64_t *)InputParams)[1] = r8;

	r8 = ((uint64_t *)InputParams)[2];
	r8 = swap_uint64(r8);
	rcx = 0x6a804215c69f512f;
	r8 = ROTR_64(r8, 0x2f);
	((uint64_t *)InputParams)[2] = r8;

	r8 = ((uint64_t *)InputParams)[3];
	r8 = r8 ^ rcx;
	rdx = ROTR_64(rdx, 0x15);
	uint64_t t = rdx;
	rdx = rcx;
	rcx = t;
	r8 = ROTR_64(r8, 0xF0);
	r8 = r8 + rdx;
	((uint64_t *)InputParams)[3] = r8;
	//rdx = 6a804215c69f512f
	//rcx = ece454a83e10f0


	printf("R: ");
	for (int i = 0; i < 0x20; i++) {
		printf("%02X", InputParams[i]);
	}
	printf("\n");
	
	DWORD Result[] = { 0x29816725, 0x0D4E46B75, 0x349F7CE1, 0x331DE826, 0x0C4E3648E, 0x7A658D66, 0x0E763E820,0x0E6DD1ABF };

	BYTE *R = (BYTE *)Result;
	printf("V: ");
	for (int i = 0; i < 0x20; i++) {		
		printf("%02X", R[i]);
	}
	printf("\n");	
};

std::vector<DWORD> NoLoops;

void PrintDebug(int IP) {
	printf("\nIP:      %08X SP:       %08X VMReg[0]: %08X VMReg[1]: %08X  VMReg[2]: %08X\n", IP, VMStreamPtr, VM_Regs[0], VM_Regs[1], VM_Regs[2]);
	printf("VMReg[3] %08X VMReg[4]: %08X VMReg[5]: %08X VMReg[6]: %08X  VMReg[7]: %08X\n", VM_Regs[3], VM_Regs[4], VM_Regs[5], VM_Regs[6], VM_Regs[7]);
}

int main(int argc, char **argv) {
	// Taint all mode
	//TE.setTaintAllMode();

	// Load VM into memory
	LoadVM();

	//Set input params
	VMStreamHeader *VMh = (VMStreamHeader *) VM_Stream_Ptr->NextVMStreamPtr;
	VMh = (VMStreamHeader *) VMh->NextVMStreamPtr;	
	InputParams = (BYTE *)VMh->VMOpcodePtr + 0x1020;
	for (int i = 0; i < 0x20; i++) {
		InputParams[i] = 0;
	}

	if (argc == 1) {
		//Default
		/*BYTE Result[]  = { 0x74, 0xEE, 0x9F, 0x38, 0x0D, 0x15, 0xDF ,0x7E, 
			               0x22, 0x39, 0x6E, 0xC6, 0x5E, 0x19, 0xF9, 0xFD };
		BYTE Result2[] = { 0x7E, 0xF8, 0x99, 0x6D, 0xC8, 0x32, 0x16, 0x35,
			               0x1E, 0xED, 0x5E, 0x28, 0x0E, 0xD1, 0xEF, 0x50 };
		*/

		//BYTE Result3[] = { 0x50 ,0xC7,0xC9,0x82,0x1F,0x0A,0x06,0xBD,0x5E,0x42,0xC0,0x34,0x93,0xF1,0x0F,0x68,0x97,0xFF,0x43,0xE4,0x4A,0x18,0xBF,0xAF,0x67,0xBB,0x49,0x5B,0x3F,0x25,0xBC,0xD5 };
		//memcpy(InputParams, "AAC0F1DY00000000", 16);
		//memcpy(InputParams, "GOLDFISTGOLDFISTGOLDFISTGOLDFIST", 32);
		//memcpy(InputParams, "3f691f3d6eb60b343c931c22e0baa92f", 32);
		memcpy(InputParams, "11111111111111111111111111111111", 32);
		//memcpy(InputParams, Result3, 32);
		//memcpy(InputParams+0x10, Result2, 16);

		DWORD *IPDW = (DWORD *)InputParams;
		//IPDW[0] = 0x7EDF150D;
		//IPDW[1] = 0x389FEE74;
	}
	else if (argc == 2) {
		if (strlen(argv[1]) != 16) {
			printf("[*] Usage: %s 0011223344556677\n", argv[0]);
			return 0;
		}
		memcpy(InputParams, argv[1], 0x10);
	}
	else {
		if (strlen(argv[1]) != 16) {
			printf("[*] Usage: %s 001122334455667788\n", argv[0]);
			return 0;
		}
	}	
	printf("I: ");
	for (int i = 0; i < 0x10; i++) {
		if (i == 8)
			printf(" ");
		printf("%02X", InputParams[i]);
	}
	printf("\n");	

	ResetVMAndInitState();

	int IP = 0;		
	bool once = false;

	//Taint memory
	TE.addMemory(0x05573120);
	TE.addMemory(0x05573124);

	for (;;) {
		//PrintDebug(IP);
		/*if (isLoop == false) {
			printf("IP%08X:\n", VMStreamPtr);
		}*/

		BYTE VMOpcode = LoadNextByteFromVMStream();

		BYTE VMOpcode_Ptr = VMOpcode & 0xF8;

		if (VMOpcode_Ptr > 0xE8) {
			if (((DWORD *)InputParams)[0] == 0x29816725 && ((DWORD *)InputParams)[1] == 0x0D4E46B75) {
				printf("Password found!\n");
			}
			break;
		}

		BYTE Opcode = VM_Opcode_Encoding[VMOpcode_Ptr];
		(*OpcodeFuncTable[Opcode])(VMOpcode);

		//Increase Counter			
		IP++;

		//Don't print any loops
		if (std::find(NoLoops.begin(), NoLoops.end(), VMStreamPtr) != NoLoops.end()) {
			//Loop detected .. leave
			//return 0;			
			//printf("Loop Detected!!!\n");
			//isLoop = true;
		}
		else {
			isLoop = false;
		}
		NoLoops.push_back(VMStreamPtr);

		for (int i = 0; i < 7; i++) {
			//98CBFCA1 0xA1FCCB98 //0x00008d87
			//25678129 0x29816725 //0x00008c82
			if (VM_Regs[i] == 0x0F4DE48C) {
				printf("if (VM_Regs_%i == 0x%08X) {\n printf(\"WORKS!\\n\");\n}\n", i, VM_Regs[i]);
				return 0;
			}

			if (once == false && VM_Regs[i] == 0x272813EA) {
				once = true;
				printf("if (VM_Regs_%i != 0x%08X) {\n printf(\"Wrong!\\n\");\n return;\n}\n", i, VM_Regs[i]);
			}
		}
	}

	return 0;
}