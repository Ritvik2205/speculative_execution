.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
btc rcx, 24
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sets al
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
sbb di, 80
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 26
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
