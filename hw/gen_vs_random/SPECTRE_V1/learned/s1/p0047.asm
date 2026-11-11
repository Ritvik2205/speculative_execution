.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, al
add bl, sil
xchg rdi, rbx
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rsi + 57]
adc cl, dl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
