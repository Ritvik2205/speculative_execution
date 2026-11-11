.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and eax, -574348013
xor bl, al
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and cl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and si, -121
and rsi, 45
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
