.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
btc eax, 40
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
test dl, -36
and dx, 34
sub al, dl
add dl, dl
jmp .bb_0.1
.bb_0.1:
test dil, -116
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
lea ax, qword ptr [rbx + rsi]
or al, 19
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
