.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add dil, cl
not eax
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -7
add eax, -371144449
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
