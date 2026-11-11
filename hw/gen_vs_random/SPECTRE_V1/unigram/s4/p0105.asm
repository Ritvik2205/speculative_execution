.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dl, cl
mov rbx, 94
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
cmp dl, 63
bt esi, ecx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 41
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
mov rbx, 49
or bx, 36
mov cl, -98
lea rdi, qword ptr [rcx]
cmovno rsi, rcx
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
xor rax, 1636804787
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
