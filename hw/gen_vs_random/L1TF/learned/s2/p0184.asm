.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor rcx, 100
sub bx, 66
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
test cl, 31
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
test al, 15
or ax, -10161
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
