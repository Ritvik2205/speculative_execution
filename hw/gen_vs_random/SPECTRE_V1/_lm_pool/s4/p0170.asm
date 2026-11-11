.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, bx
lea dx, qword ptr [rdi + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
or edx, 19
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
bts ebx, 84
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
