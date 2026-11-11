.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dl
adc dil, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 11
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
sub bl, cl
test eax, -31785616
sub cl, dl
or al, bl
mov al, cl
adc al, -86
or al, 1
adc al, 116
sub cl, 78
cmp ax, 28568
or cl, 12
cmp al, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
