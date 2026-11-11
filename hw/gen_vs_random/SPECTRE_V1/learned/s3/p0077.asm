.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
add al, cl
sbb al, 104
adc bl, -76
adc sil, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
adc cl, -19
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc dil, 49
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
