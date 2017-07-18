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

#include <stdio.h>

unsigned char Password[16] = { 0x00 , 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE,0xFF };

unsigned char Plaintext[16] = {0};

const unsigned char IV[16] = { 0x35, 0xF8, 0x2D, 0xEA, 0x31, 0x13, 0xD2, 0xEC, 0xF3, 0xED, 0x35, 0x54, 0xC4, 0xA1, 0x99, 0xF6 };
const unsigned char Data[16] = { 0x36, 0x36, 0x4C, 0x47, 0xF9, 0xD6, 0x48, 0x39, 0x84, 0xD7, 0xD2, 0x53, 0xDB, 0x47, 0xB2, 0x21,};

void DecryptBlock() {
	//unsigned int s1 = 0; //*(unsigned int *)(&Data[4]); //get ptr to round
	unsigned int t4 = *(unsigned int *)(&Password[0]);
	unsigned int a3 = *(unsigned int *)(&Password[4]);  //a3 = b[13]
	unsigned int t2 = *(unsigned int *)(&Password[8]);
	unsigned int t5 = *(unsigned int *)(&Password[12]); //t5 = b[30]


	//unsigned int s2 = 0xadaaa9aa; // a5 - 1622;
	Password[15] = (((((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) >> 23) | (((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) << 9)) >> 24) + 65;
	Password[14] = Password[15] + (((((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) >> 23) | (((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) << 9)) >> 16) + 72;
	Password[13] = Password[14] + (((((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) >> 23) | (((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) << 9)) >> 8) + 79;
	Password[12] = ((((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) >> 23) | (((a3 & 0x52555655) | (t5 & 0xadaaa9aa)) << 9)) + Password[13] + 86;
	Password[11] = Password[12] + 93 + (((((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) >> 19) | (((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) << 0xD)) >> 24);
	Password[10] = Password[11] + (((((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) >> 19) | (((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) << 0xD)) >> 16) + 100;
	Password[9] = Password[10] + (((((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) >> 19) | (((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) << 0xD)) >> 8) + 0x6B;
	Password[8] = Password[9] + ((((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) >> 19) | (((t4 & 0x52555655) | (t2 & 0xadaaa9aa)) << 0xD)) + 0x72;
	Password[7] = Password[8] + (((((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) >> 0x11) | (((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) << 15)) >> 0x18) + 0x79;
	Password[6] = Password[7] + (((((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) >> 0x11) | (((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) << 15)) >> 0x10) + 0x80;
	Password[5] = (Password[6] + (((((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) >> 0x11) | (((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) << 15)) >> 8)) + 0x87;
	Password[4] = Password[5] + ((((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) >> 0x11) | (((a3 & 0xadaaa9aa) | (t5 & 0x52555655)) << 15)) + 0x8E;
	Password[3] = Password[4] + ((((((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) << 0x13) >> 0xD) | (((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) << 0x13)) >> 0x18) + 0x95;
	Password[2] = Password[3] + (((((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) >> 0xD) | (((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) << 0x13)) >> 0x10) + 0x9C;
	Password[1] = Password[2] + (((((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) >> 0xD) | (((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) << 0x13)) >> 8) + 0xA3;
	Password[0] = ((((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) >> 0xD) | (((t4 & 0xadaaa9aa) | (t2 & 0x52555655)) << 0x13)) + Password[1] + 0xAA;

	printf("Decrypt:\t");
	for (int i = 0; i<16; i++) {
		printf("%02X ", Password[i] ^ IV[15 - i] ^ Data[i]);
	}
	printf("\n");
	
	//Store
	Plaintext[15] = Password[15] ^ Data[15] ^ IV[0];
	Plaintext[14] = Password[14] ^ Data[14] ^ IV[1];
	Plaintext[13] = Password[13] ^ Data[13] ^ IV[2];
	Plaintext[12] = Password[12] ^ Data[12] ^ IV[3];
	Plaintext[11] = Password[11] ^ Data[11] ^ IV[4];
	Plaintext[10] = Password[10] ^ Data[10] ^ IV[5];
	Plaintext[9] = Password[9] ^ Data[9] ^ IV[6];
	Plaintext[8] = Password[8] ^ Data[8] ^ IV[7];
	Plaintext[7] = Password[7] ^ Data[7] ^ IV[8];
	Plaintext[6] = Password[6] ^ Data[6] ^ IV[9];
	Plaintext[5] = Password[5] ^ Data[5] ^ IV[10];
	Plaintext[4] = Password[4] ^ Data[4] ^ IV[11];
	Plaintext[3] = Password[3] ^ Data[3] ^ IV[12];
	Plaintext[2] = Password[2] ^ Data[2] ^ IV[13];
	Plaintext[1] = Password[1] ^ Data[1] ^ IV[14];
	Plaintext[0] = Password[0] ^ Data[0] ^ IV[15];
}


//char Plaintext[] = { 0x5d ,0x00 ,0x00 ,0x80 ,0x00 ,0xff ,0xff ,0xff ,0xff ,0xff ,0xff ,0xff ,0xff ,0x00 ,0x23 ,0x93 };

int main(void) {
	DecryptBlock();
	printf("'");
	for (int i = 0; i < 16; i++) {
		printf("%C", Plaintext[i]);
	}
	printf("'\n");

	return 0;
}
