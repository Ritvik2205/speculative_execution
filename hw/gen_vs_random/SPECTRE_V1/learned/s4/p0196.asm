.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
setnb dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add edx, 76
test al, -71
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
