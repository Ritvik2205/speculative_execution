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
bt edi, 134
and edx, -62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
xor eax, -1721938664
bswap ecx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, 19 # instrumentation
setnz bl
adc cl, bl
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
