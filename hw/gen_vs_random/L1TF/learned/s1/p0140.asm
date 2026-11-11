.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub edi, 27
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
test edi, 23
adc al, 80
cmovbe esi, edi
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovno ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
