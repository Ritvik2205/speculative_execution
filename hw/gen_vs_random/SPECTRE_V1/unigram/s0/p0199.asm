.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
sub sil, -18
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 35
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rbx, 64
xor cl, 71
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, cl
cmovz cx, cx
adc ecx, 92
mov ecx, edx
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 6
lea bx, qword ptr [rdx + rbx]
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
