.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and dil, sil
sbb cl, 127
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
sbb cl, -69
btr rcx, rax
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 51
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
cmp di, -8
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
imul rdx, rbx
cmovo rdx, rsi
mov cx, ax
and al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
btr bx, cx
sub edx, -122
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
cmp dl, 45
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
sub ecx, -107
add cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 69
or bl, 111
sbb rdx, -43
or eax, 1001462340
bt rax, 59
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
mov rbx, rax
inc sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
cmovnl di, ax
cmovp rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
sbb al, 57
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
add al, dil
inc di
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
