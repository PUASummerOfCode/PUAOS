all: boot.bin

boot.bin: boot.asm gdt.asm print_string.asm print_string_pm.asm switch_to_pm.asm
	nasm -fbin -in boot.asm -o boot.bin

run: boot.bin
	qemu-system-x86_64 boot.bin

clean:
	rm -rf *.bin
