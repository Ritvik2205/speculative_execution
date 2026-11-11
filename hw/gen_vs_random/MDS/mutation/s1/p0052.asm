.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
test cl, 0
test ax, -11534
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
or dl, bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
xor eax, 571592471
btr bx, 74
and dl, 125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and cx, -2
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
cmovz di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and al, 39 # instrumentation
cmovbe si, bx
and rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
btc si, 43
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
