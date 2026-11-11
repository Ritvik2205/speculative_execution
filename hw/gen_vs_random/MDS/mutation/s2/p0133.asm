.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
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
xor ax, -23364
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
xor al, -26
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and cl, -6
and cx, -8
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or bx, si
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
btc esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
cmovz edx, edx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
