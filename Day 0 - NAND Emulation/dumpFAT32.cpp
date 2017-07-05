#include <stdio.h>
#include <stdlib.h>
#include <vector>

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

	Small NAND emulator to dump the NAND image from the logic analyser
	Peter Garba (c) 2017
*/


#define NAND_CMD_READ0          0
#define NAND_CMD_READ1          1
#define NAND_CMD_RNDOUT         5
#define NAND_CMD_PAGEPROG       0x10
#define NAND_CMD_READOOB        0x50
#define NAND_CMD_ERASE1         0x60
#define NAND_CMD_STATUS         0x70
#define NAND_CMD_SEQIN          0x80
#define NAND_CMD_RNDIN          0x85
#define NAND_CMD_READID         0x90
#define NAND_CMD_ERASE2         0xd0
#define NAND_CMD_PARAM          0xec
#define NAND_CMD_GET_FEATURES   0xee
#define NAND_CMD_SET_FEATURES   0xef
#define NAND_CMD_RESET          0xff

unsigned char *GetBuffer(char *Filename, size_t &FileSize) {
	FILE *fp=fopen(Filename,"rb");

	fseek(fp,0, SEEK_END);	
	FileSize = ftell(fp);
	fseek(fp,0, SEEK_SET);

	unsigned char *Buffer = (unsigned char *) calloc(1,FileSize);

	fread(Buffer,1,FileSize,fp);

	fclose(fp);

	return Buffer;
}


int main() {
	size_t FileSize;
	
	unsigned char *Writes = GetBuffer("Writes.bin", FileSize);
	unsigned char *ALE = GetBuffer("ALE.bin", FileSize);
	unsigned char *CLE = GetBuffer("CLE.bin", FileSize);
	unsigned char *RE = GetBuffer("RE.bin", FileSize);


	FILE *fpOut = fopen("NAND.img","wb");

	int LAST_COMMAND = 0;
	int LAST_ADDRESS = 0;

	bool Write = false;
	unsigned int Address = -1;

	unsigned int PageCount = 0;

	unsigned int HighestPage = 0;

	unsigned char *Image = (unsigned char *) calloc(0x2000, 0x1100); 
	
	
	//Now look for the VFAT header
	for (size_t i=0;i<FileSize;i++) {
		//if (LAST_COMMAND != NAND_CMD_SEQIN) {
		//}
		//Write
		//if (!ALE[i] && !CLE[i] && RE[i]) //ASYNC mode
		//if (Write && Address != -1  && !CLE[i] && RE[i])
		//{	
			//printf("%X %X %X %X\n", ALE[i], CLE[i], RE[i], Writes[i]);
			//fwrite(&Writes[i], 1,1,fpOut);
			//PageCount +=1;
		//} else {
			if (!ALE[i] && !CLE[i] && RE[i]) {
				//Here we write if the Write flag is set
				if (Write == false) {	
					printf("%06X: ALE %2X CKE %2X RE %2X DATA %2X => ",i , ALE[i], CLE[i], RE[i], Writes[i]);
					printf("No Write FLAG!\n");
					return 1;
				}
				//fwrite(&Writes[i], 1,1,fpOut); 
				Image[Address * 0x2000 + PageCount] = Writes[i];
				PageCount++;
			} else {
				printf("%06X: ALE %2X CKE %2X RE %2X DATA %2X => ",i , ALE[i], CLE[i], RE[i], Writes[i]);
				if (CLE[i] && !ALE[i]) {
				//printf("%X: A %2X C %2X E %2X C %2X => ",i , ALE[i], CLE[i], RE[i], Writes[i]);
				//CMD mode
				switch (Writes[i]) {
					case NAND_CMD_SEQIN:
						printf("NAND_CMD_SEQIN\n");
						Write = true;
						break;
					case NAND_CMD_READID:
						printf("NAND_CMD_READID\n");
						break;
					case NAND_CMD_ERASE1:
						printf("NAND_CMD_ERASE1\n");
						break;
					case NAND_CMD_ERASE2:
						printf("NAND_CMD_ERASE2\n");
						break;
					case NAND_CMD_RESET:
						printf("NAND_CMD_RESET\n");
						break;
					case NAND_CMD_PAGEPROG:
						printf("NAND_CMD_PAGEPROG\n");
						Write = false;
						Address = -1;
						printf("PageSize 0x%08X\n", PageCount);
						PageCount = 0;
						break;
					default:
						printf("Unknown CMD %02X !\n", Writes[i]);
						return 1;
				}
				//Store last command
				LAST_COMMAND = Writes[i];
			} else if (ALE[i] && !CLE[i] ) {
				//Address mode
				unsigned int Addr = 0;
				Addr |= Writes[i];

				//printf("%X: A %2X C %2X E %2X C %2X\n",i , ALE[i], CLE[i], RE[i], Writes[i]);

				if (LAST_COMMAND == NAND_CMD_SEQIN) {
					//Read 4 Bytes
					Addr |= (Writes[i+0] << 0);
					Addr |= (Writes[i+1] << 8);
					Addr |= (Writes[i+2] << 16);
					Addr |= (Writes[i+3] << 24);
			
					Address = Addr >> 16;	
					//Skip to data
					i += 4;
				
					//Write data until NAND_CMD_PAGEPROG
					Write = true;
				}
			
				if (Addr > HighestPage)
					HighestPage = Addr;

				printf("Address %08X %X %X %X %X %X\n", Address, Writes[i-4], Writes[i-3], Writes[i-2], Writes[i-1], Writes[i]);
			} else if (!Write && ALE[i] && !CLE[i] ) {
				unsigned int Addr = 0;
				Addr |= Writes[i];
				printf("Address %X\n", Addr); 
			} else if (!Write && Address == -1 && !ALE[i] && !CLE[i] && RE[1]) {
				printf("Idle\n"); 
			} else  {
				printf("%X: A %2X C %2X E %2X C %2X => ",i , ALE[i], CLE[i], RE[i], Writes[i]);
				printf("Unknown mode!\n");
				//return 1;
			}
		}
		
	}	

	//Write Image
	fwrite(Image, 0x1100,0x2000,fpOut);
	fclose(fpOut);

	
	printf("Highest Page: %08X\n",HighestPage);


	return 0;
}
