.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor al, 34
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 48
xor rax, -1657511731
btr si, dx
bt esi, edx
test al, al
or sil, dil
xor dl, 40
xor dl, 34
and dil, dl
or sil, -78
test di, 55
or dl, dil
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
