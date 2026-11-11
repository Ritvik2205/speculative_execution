.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, bl
cmovo rdi, rdi
sbb rdx, -34
cmp ax, 7046
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 43
add al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, 35
setbe al
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
bswap ebx
adc bl, -73
lea rcx, qword ptr [rax]
and dl, -92
lea bx, qword ptr [rbx + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
