#include <Windows.h>
#include <Tlhelp32.h>
#include <stdio.h>

/************************************************************************/
/* This function enables the debug privilege                            */
/************************************************************************/
bool EnableDebugPrivilege()
{
	TOKEN_PRIVILEGES	priv;
	HANDLE				hThis, hToken;
	LUID				luid;

	hThis = GetCurrentProcess();
	OpenProcessToken(hThis, TOKEN_ADJUST_PRIVILEGES, &hToken);
	LookupPrivilegeValue(0, "seDebugPrivilege", &luid);
	priv.PrivilegeCount = 1;
	priv.Privileges[0].Luid = luid;
	priv.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
	AdjustTokenPrivileges(hToken, false, &priv, 0, 0, 0);
	CloseHandle(hToken);
	CloseHandle(hThis);

	return true;
}

int FindAndOpenProcess(char *ProcessName, PROCESS_INFORMATION *Pi)
{
	HANDLE hProcessSnap, hThreadsSnap;
	PROCESSENTRY32 pe32;

	hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

	pe32.dwSize = sizeof(PROCESSENTRY32);

	if (!Process32First(hProcessSnap, &pe32))
	{
		printf("Process32First error!\n");
		CloseHandle(hProcessSnap);
		return 0;
	}

	do
	{
		if (!strcmp(pe32.szExeFile, ProcessName))
		{
			Pi->dwProcessId = pe32.th32ProcessID;
			Pi->hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pe32.th32ProcessID);
			CloseHandle(hProcessSnap);
			return 1;
		}
	} while (Process32Next(hProcessSnap, &pe32));


	CloseHandle(hProcessSnap);

	return 0;
}

typedef struct {
	unsigned char Type[4];
	DWORD VMMemoryPtr;
	DWORD VMMemorySize;
	DWORD VMOpcodePtr;
	DWORD NextVMStreamPtr;
	char Unknown[28];
} VMStreamHeader;

int main(int argc, char **argv) {
	PROCESS_INFORMATION PI;

	// Enable debug privilege
	EnableDebugPrivilege();

	int r = FindAndOpenProcess("unstable.machines.exe", &PI);
	if (!r) {
		return 1;
	}

	//VM Stuff
	DWORD VMStreamPtr;

	//Read VMStream Ptr
	SIZE_T bytes;
	ReadProcessMemory(PI.hProcess, (LPVOID)0x00416638, &VMStreamPtr, sizeof(DWORD), &bytes);
	
	printf("VMStruct Ptr: %08X\n", VMStreamPtr);

	//Read VMStream	
	VMStreamHeader VMh;
	ReadProcessMemory(PI.hProcess, (LPVOID) (VMStreamPtr), &VMh, sizeof(VMStreamHeader), &bytes);

	VMStreamHeader VMh2;
	ReadProcessMemory(PI.hProcess, (LPVOID)(VMh.NextVMStreamPtr), &VMh2, sizeof(VMStreamHeader), &bytes);

	VMStreamHeader VMh3;
	ReadProcessMemory(PI.hProcess, (LPVOID)(VMh2.NextVMStreamPtr), &VMh3, sizeof(VMStreamHeader), &bytes);

	//Create deltas
	VMStreamHeader *PVMh1, *PVMh2, *PVMh3;

	PVMh1 = (VMStreamHeader *) &VMh;
	unsigned char *VMMemory1 = (unsigned char *)calloc(1, PVMh1->VMMemorySize);	
	ReadProcessMemory(PI.hProcess, (LPVOID)PVMh1->VMMemoryPtr, VMMemory1, PVMh1->VMMemorySize, &bytes);
	unsigned char *VMOpcodes = (unsigned char *)calloc(1, PVMh1->VMMemorySize);
	ReadProcessMemory(PI.hProcess, (LPVOID)PVMh1->VMOpcodePtr, VMOpcodes, PVMh1->VMMemorySize, &bytes);


	//PVMh1->VMMemoryPtr = 0;
	PVMh1->VMOpcodePtr = 0;
	PVMh1->NextVMStreamPtr = 0;


	PVMh2 = (VMStreamHeader *) (&VMh2);
	unsigned char *VMMemory2 = (unsigned char *)calloc(1, PVMh2->VMMemorySize);
	ReadProcessMemory(PI.hProcess, (LPVOID)PVMh2->VMMemoryPtr, VMMemory2, PVMh2->VMMemorySize, &bytes);
	unsigned char *VMOpcodes2 = (unsigned char *)calloc(1, PVMh2->VMMemorySize);
	ReadProcessMemory(PI.hProcess, (LPVOID)PVMh2->VMOpcodePtr, VMOpcodes2, PVMh2->VMMemorySize, &bytes);

	//PVMh2->VMMemoryPtr = 0;
	PVMh2->VMOpcodePtr = 0;
	PVMh2->NextVMStreamPtr = 0;

	PVMh3 = (VMStreamHeader *)(&VMh3);

	unsigned char *VMMemory3 = (unsigned char *)calloc(1, PVMh3->VMMemorySize);
	ReadProcessMemory(PI.hProcess, (LPVOID)PVMh3->VMMemoryPtr, VMMemory3, PVMh3->VMMemorySize, &bytes);


	//Page says 0x1100 but it's longer for sure ;)
	//Lets try with 0x2000
	size_t US_Size = 0x2400;
	unsigned char *VMOpcodes3 = (unsigned char *)calloc(1, US_Size); // PVMh3->VMMemorySize);
	ReadProcessMemory(PI.hProcess, (LPVOID)PVMh3->VMOpcodePtr, VMOpcodes3, US_Size, &bytes); // PVMh3->VMMemorySize, &bytes);
	
	//PVMh3->VMMemoryPtr = 0;
	PVMh3->VMOpcodePtr -= VMStreamPtr;

	//Dump VMStream header
	FILE *fp = fopen("c:\\temp\\unstablemachines\\VMH1.bin", "wb");
	fwrite(PVMh1, sizeof(VMStreamHeader), 1, fp);
	fclose(fp);

	//Dump VMStream header
	fp = fopen("c:\\temp\\unstablemachines\\VMH2.bin", "wb");
	fwrite(PVMh2, sizeof(VMStreamHeader), 1, fp);
	fclose(fp);

	//Dump VMStream header
	fp = fopen("c:\\temp\\unstablemachines\\VMH3.bin", "wb");
	fwrite(PVMh3, sizeof(VMStreamHeader), 1, fp);
	fclose(fp);

	//Dump VMOpcodes 1 
	fp = fopen("c:\\temp\\unstablemachines\\VM_OP1.bin", "wb");
	fwrite(VMOpcodes, PVMh1->VMMemorySize, 1, fp);
	fclose(fp);

	//Dump VMOpcodes 2 
	fp = fopen("c:\\temp\\unstablemachines\\VM_OP2.bin", "wb");
	fwrite(VMOpcodes2, PVMh2->VMMemorySize, 1, fp);
	fclose(fp);

	//Dump VMOpcodes 3
	fp = fopen("c:\\temp\\unstablemachines\\VM_OP3.bin", "wb");
	fwrite(VMOpcodes3, US_Size, 1, fp); // PVMh3->VMMemorySize, 1, fp);
	fclose(fp);


	//Dump VMStream
	FILE *fp1 = fopen("c:\\temp\\unstablemachines\\VMMem1.bin", "wb");
	fwrite(VMMemory1, PVMh1->VMMemorySize, 1, fp1);
	fclose(fp);

	//Dump VMStream
	FILE *fp2 = fopen("c:\\temp\\unstablemachines\\VMMem2.bin", "wb");
	fwrite(VMMemory2, PVMh2->VMMemorySize, 1, fp2);
	fclose(fp);

	//Dump VMStream
	FILE *fp3 = fopen("c:\\temp\\unstablemachines\\VMMem3.bin", "wb");
	fwrite(VMMemory3, PVMh3->VMMemorySize, 1, fp3);
	fclose(fp);

	free(VMMemory1);
	free(VMMemory2);
	free(VMMemory3);

	return 0;
}