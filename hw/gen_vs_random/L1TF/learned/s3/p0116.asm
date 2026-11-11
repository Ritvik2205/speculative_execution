.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and cl, 3
xor al, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
btc edx, 91
sub al, 9
add di, 90
and cl, 87
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
