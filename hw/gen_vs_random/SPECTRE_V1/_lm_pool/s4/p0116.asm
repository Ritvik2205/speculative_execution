.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
test dl, 113
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
test dl, -7
sbb bl, -41
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, -22629
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
