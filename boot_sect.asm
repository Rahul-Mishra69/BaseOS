;infinite loop
loop:
    jmp loop

;fill from 0-510 and add 0xaa55 in little endian mode(x86 supports little endian)
times 510-($-$$) db 0
;instructs BIOS to begin from cylinder head 0 and block 0 of HDD aka magic number
dw 0xaa55