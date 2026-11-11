.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
test cl, al
and bl, 89
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
adc dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test cl, 60
and al, dil
and bl, cl
and al, -68
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
