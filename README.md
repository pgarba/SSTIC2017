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


This repo contains my solution for the sstic 2017 challange

Day 0 - NAND emulation
	- Convert the logic analyser trace into a binary and parse the NAND protocol to get the image

Day 1 - Dont Let Him Escape
	- Use the kernel BPF JIT option to compile the BPF into x86/x64 code
	- Use Triton to easily debug and attack the code
	- Use qemu with gdb port and IDA Pro to debug the jitted BPF code

Day 2 - Riscy Zones

	- Use https://github.com/0xDeva/ida-cpu-RISC-V Plugin to recover the RISC-V TA code	
	
	- Translate RISC-V opcodes to simple C code ... (Recovered_Unoptimized_TA_Code)	
	
		- The idea is that compiler optimization will help us to reduce the code and make it more readable
		
	- Disassemble the optimized code with IDA and use the decompiler to get it in C
	
	- Optimize/Deobfuscate the left code by hand to make it readable and more in shape for the attack
	
		- Prepare the code to be attacked with symbolic execution (triton/klee) (RZ_Attack)
		
		- On the SSTIC challenge I used triton for that but after the challenge I had some time to play with klee and noticed that it outperfoms triton a lot and is much easier to use if you go for source code recovery
		
	- Code the needed triton part (TritonSolverCode)		
	
		- Triton takes about 5 minutes and ~3GB of memory on my machine (Intel 6700k 32GB RAM)
		
		- Klee does the same job in under 1 second with much less memory (klee_solution)
				
			- So if you go the way of code recovering, klee is the better tool for the job and only needs one line of additional C code:


			 	klee_make_symbolic(Password,16,"password");


