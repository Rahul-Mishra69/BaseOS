mov ah,0x0e
mov al,'H'
int 0x10
mov al,'e'
int 0x10
mov al,'l'
int 0x10
mov al,'l'
int 0x10
mov al,'o'
int 0x10
mov al,'w'
int 0x10
mov al,'o'
int 0x10
mov al,'r'
int 0x10
mov al,'l'
int0x10
mov al,'d'
int 0x10

jmp $

;fill from 0-510 and add 0xaa55 in little endian mode(x86 supports little endian)
times 510-($-$$) db 0
;instructs BIOS to begin from cylinder head 0 and block 0 of HDD aka magic number
dw 0xaa55
