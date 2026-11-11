.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
sbb dil, al
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, cl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
