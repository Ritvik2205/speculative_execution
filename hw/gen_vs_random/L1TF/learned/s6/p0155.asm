.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
xor bl, sil
mov sil, 79
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
btc ax, si
xor al, bl
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovbe esi, eax
sub dil, 87
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
