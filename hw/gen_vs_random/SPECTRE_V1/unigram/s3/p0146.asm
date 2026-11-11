.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rbx + rax + 79]
imul al
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
sub cl, cl
lea rcx, qword ptr [rdx + rbx + 41]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 73
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
add dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
adc dil, 50
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
add al, -62 # instrumentation
setnb al
lea rcx, qword ptr [rax + rcx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
