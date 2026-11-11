.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
sub dl, dil
setnb al
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
test dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
