.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
test dil, -116
add al, -44
lea bx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
cmp dil, cl
xor al, -19
add al, -72
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
lea ax, qword ptr [rdx]
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
