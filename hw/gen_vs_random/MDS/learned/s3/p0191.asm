.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, si
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or cl, -36
or rax, -689609688
test ecx, -1843375753
btc rax, 110
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rax]
and eax, 461212071
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test al, 22
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor al, 9
and rsi, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
