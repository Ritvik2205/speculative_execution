.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and al, -68
cmp bl, cl
test ax, 636
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
or rax, -443578116
sbb cl, -11
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
or rax, -443578116
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
