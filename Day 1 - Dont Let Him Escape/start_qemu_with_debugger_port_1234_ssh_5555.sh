#!/bin/sh

qemu-system-x86_64 -boot c -m 1024 -enable-kvm -s -netdev user,id=network0,hostfwd=tcp::5555-:22 -device e1000,netdev=network0,mac=52:54:00:12:34:56 -drive file=linux.img,if=virtio
