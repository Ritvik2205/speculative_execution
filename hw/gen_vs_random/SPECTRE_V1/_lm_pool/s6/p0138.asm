.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
cmp rbx, 48
sbb eax, 100
add cl, -127
add sil, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
sbb cl, sil
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
