.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rdi
xor al, 16
sub dl, -78
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 64
and eax, -409673666
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 44
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
lea ax, qword ptr [rcx + rdx + 79]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
lea rax, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
sbb si, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
