.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
add dil, 72
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -48
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg dl, cl
sbb bl, cl
bt edi, esi
and dl, dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
