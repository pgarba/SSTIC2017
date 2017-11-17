// BitReduce.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <emmintrin.h>  
#include <bitset>
#include <iostream>

#include <algorithm>
#include <string>

using namespace std;

int DoXMMCalc(unsigned int a1)
{
	unsigned int v9; // eax@1
	int v10; // eax@14
	int v11; // eax@15
	int v12; // eax@23
	int v13; // eax@24
	int v14; // eax@30
	int v15; // eax@31
	int v16; // eax@41
	int v17; // eax@42
	int v18; // eax@48
	int v19; // eax@49
	unsigned int v21; // [esp+4h] [ebp-14h]@0
	unsigned int v22; // [esp+8h] [ebp-10h]@0
	unsigned int v23; // [esp+10h] [ebp-8h]@0
	signed int v24; // [esp+14h] [ebp-4h]@54
	signed int v25; // [esp+14h] [ebp-4h]@63

	unsigned char a2 = 4;

	unsigned int a3;
	__m128d a4;
	__m128d a5;
	__m128d a6;
	__m128i a7;
	__m128i a8;
	__m128d a9;

	v9 = 1847;
	v23 = a2;
	while (1)
	{
	LABEL_2:
		while (v9 <= 0x3AD)
		{
			if (v9 == 941)
			{
				a3 = _mm_extract_epi16(_mm_castpd_si128(a9), 0);
				v9 = 2027;
			}
			else if (v9 > 0x173)
			{
				if (v9 > 0x276)
				{
					v14 = v9 - 721;
					if (v14)
					{
						v15 = v14 - 141;
						if (v15)
						{
							if (v15 != 40)
								return v21 ^ v22;
							a5 = _mm_xor_pd(a5, a6);
							v9 = 337;
						}
						else
						{
							a5 = _mm_castsi128_pd(_mm_shuffle_epi32(_mm_castpd_si128(a5), 0));
							v9 = 299;
						}
					}
					else
					{
						a4 = _mm_castsi128_pd(_mm_add_epi8(_mm_castpd_si128(a4), a7));
						v9 = 360;
					}
				}
				else if (v9 == 630)
				{
					a3 = 255;
					v9 = 1576;
				}
				else
				{
					v12 = v9 - 499;
					if (v12)
					{
						v13 = v12 - 43;
						if (v13)
						{
							if (v13 != 86)
								return v21 ^ v22;
							a3 = _mm_extract_epi16(_mm_castpd_si128(a5), 3);
							v9 = 1802;
						}
						else
						{
							a3 = 1;
							v9 = 1102;
						}
					}
					else
					{
						a7 = _mm_cvtsi32_si128(a3);
						v9 = 862;
					}
				}
			}
			else if (v9 == 371)
			{
				a4 = _mm_castsi128_pd(_mm_cvtsi32_si128(v23));
				v9 = 630;
			}
			else if (v9 > 0x95)
			{
				v10 = v9 - 299;
				if (v10)
				{
					v11 = v10 - 38;
					if (v11)
					{
						if (v11 != 23)
							return v21 ^ v22;
						a8 = _mm_cvtsi32_si128(0);
						v9 = 1805;
					}
					else
					{
						a3 = _mm_extract_epi16(_mm_castpd_si128(a5), 0);
						v9 = 83;
					}
				}
				else
				{
					a6 = a5;
					v9 = 108;
				}
			}
			else
			{
				if (v9 != 149)
				{
					switch (v9)
					{
					case 0x17u:
						a9 = _mm_cmpeq_pd(a9, a4);
						v9 = 941;
						goto LABEL_2;
					case 0x53u:
						v21 = a3;
						v9 = 628;
						goto LABEL_2;
					case 0x6Cu:
						a5 = _mm_castsi128_pd(_mm_sll_epi32(_mm_castpd_si128(a5), a7));
						v9 = 1294;
						goto LABEL_2;
					case 0x7Au:
						a8 = _mm_add_epi8(a8, a7);
						v9 = 2038;
						goto LABEL_2;
					default:
						return v21 ^ v22;
					}
					return v21 ^ v22;
				}
				a5 = _mm_castsi128_pd(_mm_unpackhi_epi32(_mm_castpd_si128(a5), _mm_castpd_si128(a6)));
				v9 = 1653;
			}
		}
		if (v9 > 0x675)
			break;
		if (v9 == 1653)
		{
			a6 = _mm_castsi128_pd(_mm_unpackhi_epi32(_mm_castpd_si128(a6), _mm_castpd_si128(a5)));
			v9 = 902;
		}
		else if (v9 > 0x476)
		{
			v18 = v9 - 1279;
			if (v18)
			{
				v19 = v18 - 15;
				if (v19)
				{
					if (v19 != 282)
						return v21 ^ v22;
					a7 = _mm_cvtsi32_si128(a3);
					v9 = 1142;
				}
				else
				{
					a8 = _mm_add_epi8(a8, a7);
					v9 = 1926;
				}
			}
			else
			{
				if ((unsigned short)a3)
					v24 = 721;
				else
					v24 = 108;
				v9 = v24;
			}
		}
		else if (v9 == 1142)
		{
			a4 = _mm_castsi128_pd(_mm_and_si128(_mm_castpd_si128(a4), a7));
			v9 = 542;
		}
		else
		{
			v16 = v9 - 953;
			if (v16)
			{
				v17 = v16 - 29;
				if (v17)
				{
					if (v17 != 120)
						return v21 ^ v22;
					a5 = _mm_castsi128_pd(_mm_cvtsi32_si128(a1));
					v9 = 499;
				}
				else
				{
					a9 = _mm_cmpeq_pd(a9, a4);
					v9 = 953;
				}
			}
			else
			{
				a3 = _mm_extract_epi16(_mm_castpd_si128(a9), 0);
				v9 = 1279;
			}
		}
	}
	switch (v9)
	{
	case 0x70Au:
		a3 <<= 16;
		v9 = 1851;
		goto LABEL_2;
	case 0x70Du:
		a6 = _mm_castsi128_pd(_mm_srl_epi32(_mm_castpd_si128(a6), a7));
		v9 = 122;
		goto LABEL_2;
	case 0x737u:
		a8 = _mm_cvtsi32_si128(0);
		v9 = 371;
		goto LABEL_2;
	case 0x73Bu:
		v22 = a3;
		v9 = 247;
		goto LABEL_2;
	case 0x786u:
		a9 = _mm_castsi128_pd(a8);
		v9 = 982;
		goto LABEL_2;
	case 0x7EBu:
		if ((unsigned short)a3)
			v25 = 149;
		else
			v25 = 1805;
		v9 = v25;
		goto LABEL_2;
	case 0x7F6u:
		a9 = _mm_castsi128_pd(a8);
		v9 = 23;
		goto LABEL_2;
	default:
		return v21 ^ v22;
	}
	return v21 ^ v22;
}


unsigned int DoOperation(unsigned int Input) {
	unsigned int Result = 0;

	/*for (unsigned int i = 1; i != 0; i = i << 1) {
		Result |= ((Input & i) << 4) ^ ((Input & i) >> 5);
	}*/

	return ((Input) << 4) ^ ((Input) >> 5);;
}

unsigned int Do2(unsigned int Input) {				
	return ~((~Input) | (1 << 3));
}

unsigned int Do2S(unsigned int Input) {
	return Input & ~(1 << 3);
}

char A[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

void RunPermutation() {
	for (int i0 = 0; i0 < sizeof(A); i0++) {
		for (int i1 = 0; i1 < sizeof(A); i1++) {
			for (int i2 = 0; i2 < sizeof(A); i2++) {
				for (int i3 = 0; i3 < sizeof(A); i3++) {
					//printf("%c%c%c%c\n", A[i0], A[i1], A[i2], A[i3]);
				}
			}
		}
	}
}

int main()
{
	//for (unsigned int i = 0xFFFFFFFF; i != 0; i = i << 1) {
		//printf("%08X %08X %08X\n", i, DoOperation(i), DoXMMCalc(i));
		/*printf("%08X %08X %08X ", i, DoOperation(i), DoXMMCalc(i));
		std::bitset<32> x(i);
		std::bitset<32> y(DoXMMCalc(i));
		std::cout << x << " " << y << "\n";
		*/
	//}


	/*for (unsigned int i = 1; i != 0xFF; i++) {
		printf("%08X %08X %08X ", i, Do2(i), Do2S(i));
		std::bitset<32> x(i);
		std::bitset<32> y(Do2(i));
		std::cout << x << " " << y << "\n";
	}*/


	/*for (int i = 0; i < 0xFFFFFFFF; i++) {
		if (DoOperation(i) != DoXMMCalc(i)) {
			printf("%08X Computer sagt nein!\n");
			return 0;
		}
	}*/

	RunPermutation();

    return 0;
}

