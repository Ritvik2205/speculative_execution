.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
cmp rax, 108211639
or bl, cl
and dil, dl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx]
test cl, 47
lea rdi, qword ptr [rbx + rax]
sbb cl, -11
bt eax, ecx
and di, 74
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 93
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
