.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
bt di, 236
bt cx, 7
and cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
test rax, -1704969603
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rcx, qword ptr [rsi + rdi + 90]
or dl, dil
jno .bb_0.2
jmp .exit_0
.bb_0.2:
add dil, 27
and eax, 32
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
test eax, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
