#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

#define ROTR_64(x,n) (((x) >> (n % 64)) | ((x) << (64 - (n) % 64)));
#define ROTL_64(x,n) (((x) << (n % 64)) | ((x) >> (64 - (n) % 64)));


uint64_t swap_uint64(uint64_t val)
{
	val = ((val << 8) & 0xFF00FF00FF00FF00ULL) | ((val >> 8) & 0x00FF00FF00FF00FFULL);
	val = ((val << 16) & 0xFFFF0000FFFF0000ULL) | ((val >> 16) & 0x0000FFFF0000FFFFULL);
	return (val << 32) | (val >> 32);
}

void calc(char *Input);
void ReversedCalc(unsigned int Input[2]);
void ApplyFixup(unsigned int *InputParams);
void ReverseFixup(unsigned int *InputParams);

int main(int argc, char **argv) {	
	//unsigned int Challange[] = { 0x558644AC, 0x10CBB850, 0x3E35A38B, 0xEC92D437, 0x9A1FD426, 0x504F19C8, 0x964B6FC, 0x111A23CD };
	unsigned int Challange[] = { 0x29816725, 0xD4E46B75, 0x349F7CE1, 0x331DE826,0xC4E3648E, 0x7A658D66, 0xE763E820, 0x0E6DD1ABF };
	//unsigned int Challange[] = { 0x6BD6981, 0x386D748C, 0xF89101B4, 0xF9E6BFE3, 0x46483EFE, 0x27F19671, 0x2F7EF8F9, 0x833A2B00 };
	char test[] = "11111111";
	calc((char *)test);

	//272813EAh 0F4DE48Ch
	ReverseFixup(Challange);
	
	ReversedCalc(Challange);
	//calc((char *)Challange);
	
	ReversedCalc(Challange+2);
	//calc((char *)Ouput2);
	
	ReversedCalc(Challange + 4);
	//calc((char *)Ouput3);
	
	ReversedCalc(Challange + 6);
	//calc((char *)Ouput4);

	printf("Cleartext Hex:\n");

	char *Cleartext = (char *)Challange;

	for (int i = 0; i < 0x20; i++) {
		printf("%02X", (unsigned char) Cleartext[i]);
	}
	printf("\n\n");

	printf("Cleartext:\n");

	for (int i = 0; i < 0x20; i++) {
		printf("%c", Cleartext[i]);
	}
	printf("\n\n");

	return 0;
}


void ReverseFixup(unsigned int *InputParams) {
	uint64_t r8 = ((uint64_t *)InputParams)[3];
	r8 = r8 - 0x6a804215c69f512f;
	r8 = ROTL_64(r8, 0xF0);
	r8 = r8 ^ 0x6a804215c69f512f;
	((uint64_t *)InputParams)[3] = r8;
	
	r8 = ((uint64_t *)InputParams)[2];
	r8 = ROTL_64(r8, 0x2f);
	r8 = swap_uint64(r8);		
	((uint64_t *)InputParams)[2] = r8;

	r8 = ((uint64_t *)InputParams)[1];
	r8 = r8 + 0x897b540210ae34fa;
	r8 = swap_uint64(r8);
	r8 = r8 ^ 0x8a9507c21e001d9c;
	((uint64_t *)InputParams)[1] = r8;

	r8 = ((uint64_t *)InputParams)[0];
	r8 = r8 - 0x8a9507c21e001d9c;
	r8 = r8 ^ 0x897b540210ae34fa;
	((uint64_t *)InputParams)[0] = r8;
}


void ApplyFixup(unsigned int *InputParams) {

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
	rdx = ROTR_64(r8, 0x15);
	uint64_t t = rdx;
	rdx = rcx;
	rcx = t;
	r8 = ROTR_64(r8, 0xF0);
	r8 = r8 + rdx;
	((uint64_t *)InputParams)[3] = r8;
}

/*const unsigned int ConstArray[] = { 
	0x9AACC69B,
	0x7887E10F, 0x8379E207, 0x4054EE01, 0x4B5BF4C2, 0x2922096D, 0x021F58A3,
	0xD4F36C56, 0xE5FD1567, 0xB8D1291A, 0xCECA30D3, 0x96AC438E, 0x96AC438E,
	0x4D6FA76F, 0x4D6FA76F, 0x47466BEC, 0x314D6433, 0x0F287EA7, 0x1A1A7F9F,
	0xD6F58B99, 0xE1FC925A, 0xBFC2A705, 0x98BFF63B, 0x6B9409EE, 0x7C9DB2FF,
	0x4F71C6B2, 0x656ACE6B, 0x2D4CE126, 0x2D4CE126, 0xF519EE18, 0xE4104507,
	0xDDE70984, 0xC7EE01CB, 0x89B86C6D, 0xB0BB1D37, 0x6D962931, 0x789D2FF2,
	0x4B7143A5, 0x2F6093D3, 0x0234A786, 0x133E5097, 0xFC0B6C03, 0xFC0B6C03,
	0xC3ED7EBE, 0xC3ED7EBE, 0x8BBA8BB0, 0x7AB0E29F, 0x7487A71C, 0x5E8E9F63,
	0x20590A05, 0x475BBACF, 0x0436C6C9, 0x0F3DCD8A, 0xE211E13D, 0xC601316B,
	0xA9DEEE2F, 0xA9DEEE2F, 0x92AC099B, 0x92AC099B, 0x3E7D6C84, 0x5A8E1C56,
	0x225B2948, 0x11518037, 0x003643BC, 0xF52F3CFB, 0xB6F9A79D, 0xDDFC5867,
	0xB0D06C1A, 0xA5DE6B22, 0x78B27ED5, 0x5CA1CF03, 0x407F8BC7, 0x407F8BC7,
	0x294CA733, 0x294CA733, 0xD51E0A1C, 0xF12EB9EE, 0xB8FBC6E0, 0xA7F21DCF,
	0x96D6E154, 0x8BCFDA93, 0x5EA3EE46, 0x749CF5FF, 0x477109B2, 0x3C7F08BA,
	0xF3426C9B, 0xF3426C9B, 0xD720295F, 0xD720295F, 0xB4FB43D3, 0xBFED44CB,
	0x6BBEA7B4, 0x87CF5786, 0x65956C31, 0x3E92BB67, 0x2D777EEC, 0x2270782B,
	0xF5448BDE, 0x0B3D9397, 0xDE11A74A, 0xD31FA652, 0x89E30A33, 0x89E30A33,
	0x6DC0C6F7, 0x6DC0C6F7, 0x4B9BE16B, 0x568DE263, 0x1368EE5D, 0x1E6FF51E,
	0xFC3609C9, 0xD53358FF, 0xA8076CB2, 0xB91115C3, 0x8BE52976, 0xA1DE312F,
	0x69C043EA, 0x69C043EA, 0x2083A7CB, 0x2083A7CB, 0x1A5A6C48, 0x0461648F,
	0xE23C7F03, 0xED2E7FFB, 0xAA098BF5, 0xB51092B6, 0x92D6A761, 0x6BD3F697,
	0x3EA80A4A
};*/

const unsigned int ConstArray[] = {
	0x9AACC69B,
	0x7886E0CF, 0x8379E207, 0x4054EE01, 0x4B5AF482, 0x2922096D, 0x021F58A3,
	0xD4F36C56,	0xE5FD1567, 0xB8D1291A, 0xCECA30D3, 0x96AB434E, 0x96AB434E,
	0x4D6FA76F, 0x4D6FA76F, 0x47466BEC, 0x314D6433, 0x0F277E67, 0x1A1A7F9F,
	0xD6F58B99, 0xE1FB921A, 0xBFC2A705, 0x98BFF63B, 0x6B9409EE, 0x7C9DB2FF,
	0x4F71C6B2, 0x656ACE6B, 0x2D4BE0E6, 0x2D4BE0E6, 0xF519EE18, 0xE4104507,
	0xDDE70984, 0xC7EE01CB, 0x89B86C6D, 0xB0BB1D37, 0x6D962931, 0x789C2FB2,
	0x4B704365, 0x2F6093D3, 0x0234A786, 0x133E5097, 0xFC0B6C03, 0xFC0B6C03,
	0xC3EC7E7E, 0xC3EC7E7E, 0x8BBA8BB0, 0x7AB0E29F, 0x7487A71C, 0x5E8E9F63,
	0x20590A05, 0x475BBACF, 0x0436C6C9, 0x0F3CCD4A, 0xE210E0FD, 0xC601316B,
	0xA9DEEE2F, 0xA9DEEE2F, 0x92AC099B, 0x92AC099B, 0x3E7D6C84, 0x5A8D1C16,
	0x225B2948, 0x11518037, 0x0035437C, 0xF52F3CFB, 0xB6F9A79D, 0xDDFC5867,
	0xB0D06C1A, 0xA5DD6AE2, 0x78B17E95, 0x5CA1CF03, 0x407F8BC7, 0x407F8BC7,
	0x294CA733, 0x294CA733, 0xD51E0A1C, 0xF12DB9AE, 0xB8FBC6E0, 0xA7F21DCF,
	0x96D5E114, 0x8BCFDA93, 0x5EA3EE46, 0x749CF5FF, 0x477109B2, 0x3C7E087A,
	0xF3426C9B, 0xF3426C9B, 0xD720295F, 0xD720295F, 0xB4FA4393, 0xBFED44CB,
	0x6BBEA7B4, 0x87CE5746, 0x65956C31, 0x3E92BB67, 0x2D767EAC, 0x2270782B,
	0xF5448BDE, 0x0B3D9397, 0xDE11A74A, 0xD31EA612, 0x89E30A33, 0x89E30A33,
	0x6DC0C6F7, 0x6DC0C6F7, 0x4B9AE12B, 0x568DE263, 0x1368EE5D, 0x1E6EF4DE,
	0xFC3609C9, 0xD53358FF, 0xA8076CB2, 0xB91115C3, 0x8BE52976, 0xA1DE312F,
	0x69BF43AA, 0x69BF43AA, 0x2083A7CB, 0x2083A7CB, 0x1A5A6C48, 0x0461648F, 
	0xE23B7EC3,	0xED2E7FFB, 0xAA098BF5, 0xB50F9276, 0x92D6A761, 0x6BD3F697,
	0x3EA80A4A
};

void ReversedCalc(unsigned int ReversedInput[2]) {
	printf("Decrypt Input:\n");
	char *Output = (char *)ReversedInput;
	for (int i = 0; i < 8; i++) {
		printf("%02X", (unsigned char)Output[i]);
	}
	printf("\n");

	//0x54534946
	int Start = sizeof(ConstArray) / sizeof(unsigned int) - 1;
	for (int i = Start; i >= 0; i--) {
		unsigned int A = ReversedInput[0] + (((ReversedInput[0] << 4) ^ (ReversedInput[0] >> 5)));
		unsigned int C = ConstArray[i] ^ A;
		unsigned int High = ReversedInput[1] - C;
		ReversedInput[1] = ReversedInput[0];
		ReversedInput[0] = High;

	}

	//Swap
	/*unsigned int T = ReversedInput[0];
	ReversedInput[0] = ReversedInput[1];
	ReversedInput[1] = T;
	*/

	printf("Plaintext:\n");
	for (int i = 0; i < 4; i++) {
		printf("%02X", ((unsigned char *)&ReversedInput[0])[i]);
	}
	for (int i = 0; i < 4; i++) {
		printf("%02X", ((unsigned char *)&ReversedInput[1])[i]);
	}
	printf("\n\n\n");
}

void calc(char *Input)
{
	unsigned int Low = *(unsigned int *)Input;
	unsigned int High = ((unsigned int *)Input)[1];

	printf("Encrypt Input:\n");
	char *Output = (char *)Input;
	for (int i = 0; i < 8; i++) {
		printf("%02X", (unsigned char)Output[i]);
	}
	printf("\n");

	//Loop :D
	for (int i = 0; i < sizeof(ConstArray) / sizeof(unsigned int); i++) {
		unsigned int A = (High + ((High << 4) ^ (High >> 5)));
		unsigned int C = ConstArray[i] ^ A;
		unsigned int NR = C + Low;
		Low = High;
		High = NR;
	}

	//GOLDFIST
	//if (LowWord == 0x16359C65)
	{
		printf("Encrypted:");
		printf("\n");
		for (int i = 0; i < 4; i++) {
			printf("%X", ((unsigned char *) &Low)[i]);
		}

		for (int i = 0; i < 4; i++) {
			printf("%X", ((unsigned char *)&High)[i]);
		}

		printf("\n");
	}
}