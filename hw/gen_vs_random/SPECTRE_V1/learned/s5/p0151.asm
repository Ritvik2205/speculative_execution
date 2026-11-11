.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 96
test cl, -120
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 36
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
sub cl, -47
add bl, dil
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
