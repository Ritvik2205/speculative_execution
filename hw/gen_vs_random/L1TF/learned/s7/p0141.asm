.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
sbb dil, sil
sub al, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 54
cmp cx, 47
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
adc dl, -12
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
