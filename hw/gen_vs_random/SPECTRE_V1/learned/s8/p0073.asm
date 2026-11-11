.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
sbb sil, -78
sub dl, bl
test cl, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmp cl, dil
cmp eax, 100
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
