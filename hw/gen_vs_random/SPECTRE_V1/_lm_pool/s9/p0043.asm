.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
adc sil, dl
cmp edx, 44
sub dil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -75
cmp bl, -114
sbb eax, 1830317432
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
