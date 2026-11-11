.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 7
and rax, 1163013815
test cl, 32
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub al, -47
sbb cl, -11
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
