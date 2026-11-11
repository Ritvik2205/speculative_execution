.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sub al, -47
adc cl, -34
or dil, bl
xor cl, al
adc al, -6
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
