.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -93
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 17
cmovle di, si
xchg al, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
adc sil, al
add dil, -75
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
