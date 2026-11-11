.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 20
mov al, dl
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and sil, sil
cmp sil, -11
jmp .bb_0.2
.bb_0.2:
cmovl dx, cx
cmovs dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
