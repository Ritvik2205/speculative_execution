.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
cmovno ax, si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
and dl, -109
sbb al, -107
and dl, -111
xor eax, -1721938664
inc eax
test dl, -7
sub al, dil
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
