.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
cmovz eax, ebx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
cmovnz dx, dx
cmovno rbx, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
test bx, 25542
jmp .bb_0.1
.bb_0.1:
or cl, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
bts bx, si
bt di, cx
and al, -87 # instrumentation
cmovo ax, di
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, rdx
cmovo ebx, edi
cmovno rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
xor ax, -4010
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
xor al, 8
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and cl, -71
and cx, -8
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
