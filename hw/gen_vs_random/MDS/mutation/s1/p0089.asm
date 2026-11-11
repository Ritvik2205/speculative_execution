.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
test cl, 91
test ax, -31596
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
or dl, bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
xor eax, 1640090871
btr bx, 100
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
test dl, 9
bt rsi, 238
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
or al, bl
xor al, 8
test ax, 4430
or sil, -78
btc ax, dx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
