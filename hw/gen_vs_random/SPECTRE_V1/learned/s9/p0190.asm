.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 37
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmp cl, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
xor al, dil
test dl, -36
sub bl, al
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
cmovs cx, dx
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
