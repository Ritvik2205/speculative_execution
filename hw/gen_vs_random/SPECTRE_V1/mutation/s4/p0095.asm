.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
cmovnz rdx, rbx
sub ebx, 75
imul ebx, ebx, 119
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmp cl, al
sbb al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
