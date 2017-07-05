#!/bin/sh


#  _________ ____________________.____________   _______________  _____________ 
# /   _____//   _____/\__    ___/|   \_   ___ \  \_____  \   _  \/_   \______  \
# \_____  \ \_____  \   |    |   |   /    \  \/   /  ____/  /_\  \|   |   /    /
# /        \/        \  |    |   |   \     \____ /       \  \_/   \   |  /    / 
#/_______  /_______  /  |____|   |___|\______  / \_______ \_____  /___| /____/  
#        \/        \/                        \/          \/     \/              
#__________     ___________              ________      _____________.           
#\______   \ ___\__    ___/__________   /  _____/_____ \______   \_ |__ _____   
# |     ___// __ \|    |_/ __ \_  __ \ /   \  ___\__  \ |       _/| __ \\__  \  
# |    |   \  ___/|    |\  ___/|  | \/ \    \_\  \/ __ \|    |   \| \_\ \/ __ \_
# |____|    \___  >____| \___  >__|     \______  (____  /____|_  /|___  (____  /
#               \/           \/                \/     \/       \/     \/     \/ 

# Unpack firmware
munpack firmware.eml

# Unpack sigrok logic package
unzip NAND_FLASH_writes_no_OOB_5MHz.sr -d sigrok_package

# Convert NAND stream and use WE als clk to get all the writes
sigrok-cli -i NAND_FLASH_writes_no_OOB_5MHz.sr -P parallel:clk=WE:d0=I/O-0:d1=I/O-1:d2=I/O-2:d3=I/O-3:d4=I/O-4:d5=I/O-5:d6=I/O-6:d7=I/O-7 > Writes.txt

# Get the Signals to

# Convert the txt into binary
clang convert.c -O3 -o convert
./convert

# We have almost a diskimage now in Writes.bin
# Dump the fat32 image by emulating the nand
# We only need not(ALE) && not(CLE) && WE && not(RE)
clang++ dumpFAT32.cpp -O3 -o dumpFAT32
./dumpFAT32

# Now mount the images
#mkdir NAND

