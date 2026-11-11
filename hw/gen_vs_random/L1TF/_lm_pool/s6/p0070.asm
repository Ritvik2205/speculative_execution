.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, ax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
mov al, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
sub bl, 15
xor dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
bt dx, cx
test cl, 51
sub al, -47
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
