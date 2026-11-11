.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
cmp rdi, 86
setp bl
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -37
add eax, -1
lea edi, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
sbb cl, al
sbb al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
