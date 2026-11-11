.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -18
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 63
jmp .bb_0.1
.bb_0.1:
xor ax, -12492
test cl, 101
bts rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test esi, 1857129931
and cx, -8
or ebx, -15
and rdi, 84
and al, bl
test rbx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
