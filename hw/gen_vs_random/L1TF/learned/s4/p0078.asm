.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 56
adc dl, -12
and ax, 7954
and al, bl
xor dl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
