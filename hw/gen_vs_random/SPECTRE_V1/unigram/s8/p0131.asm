.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rax, 13
lea ebx, qword ptr [rdi]
cmp al, 46
cmp dl, cl
inc bx
sbb esi, 88
and bl, cl
bswap rcx
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
or cl, sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
xor cl, -91
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
