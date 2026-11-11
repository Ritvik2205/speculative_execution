.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
cmp rdx, -19
sbb cl, 105
cmp sil, cl
add cx, -103
neg rbx
lea rbx, qword ptr [rdx + rsi + 34562]
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, al
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
sub dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
