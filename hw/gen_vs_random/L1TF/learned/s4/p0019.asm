.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub cl, bl
lea rbx, qword ptr [rsi]
test sil, 29
sub dl, -34
test ax, 13284
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 49
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.2
.bb_0.2:
adc sil, 49
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
