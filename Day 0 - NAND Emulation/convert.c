#include <stdio.h>
#include <string.h>

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

	Create a Writes.bin and a ALE.bin out of the logic analyser trace
	Peter Garba (c) 2017
*/

int main(void) {
	//DATA
	FILE *fp = fopen("Writes.txt","r");
	if (!fp) {
		printf("Error!\n");
		return 1;
	}
	char line[256];

	FILE *fpOut = fopen("Writes.bin","wb");
	if (!fpOut) {
		printf("Error 2!\n");
		return 1;
	}

	while (fgets(line, sizeof(line), fp)) {
		unsigned int B;
		sscanf(line, "%X",&B);
        	//printf("%02X", (unsigned char) B);
		fwrite((unsigned char *) &B,1,1,fpOut); 
   	}

	fclose(fp);
	fclose(fpOut);

	//ALE
	fp = fopen("ALE.txt","r");
	if (!fp) {
		printf("Error!\n");
		return 1;
	}

	fpOut = fopen("ALE.bin","wb");
	if (!fpOut) {
		printf("Error 2!\n");
		return 1;
	}

	while (fgets(line, sizeof(line), fp)) {
		unsigned int B;
		sscanf(line, "%X",&B);
        	//printf("%02X", (unsigned char) B);
		fwrite((unsigned char *) &B,1,1,fpOut); 
   	}

	fclose(fp);
	fclose(fpOut);

	//RE
	fp = fopen("RE.txt","r");
	if (!fp) {
		printf("Error!\n");
		return 1;
	}

	fpOut = fopen("RE.bin","wb");
	if (!fpOut) {
		printf("Error 2!\n");
		return 1;
	}

	while (fgets(line, sizeof(line), fp)) {
		unsigned int B;
		sscanf(line, "%X",&B);
        	//printf("%02X", (unsigned char) B);
		fwrite((unsigned char *) &B,1,1,fpOut); 
   	}

	fclose(fp);
	fclose(fpOut);

	//CLE
	fp = fopen("CLE.txt","r");
	if (!fp) {
		printf("Error!\n");
		return 1;
	}

	fpOut = fopen("CLE.bin","wb");
	if (!fpOut) {
		printf("Error 2!\n");
		return 1;
	}

	while (fgets(line, sizeof(line), fp)) {
		unsigned int B;
		sscanf(line, "%X",&B);
        	//printf("%02X", (unsigned char) B);
		fwrite((unsigned char *) &B,1,1,fpOut); 
   	}

	fclose(fp);
	fclose(fpOut);
	

	return 0;
}
