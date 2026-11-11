.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 2806
lea rax, qword ptr [rdi + rdi + 39]
test cl, -62
mov al, dil
cmovle rbx, rdx
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
setno cl
sbb eax, -108
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
