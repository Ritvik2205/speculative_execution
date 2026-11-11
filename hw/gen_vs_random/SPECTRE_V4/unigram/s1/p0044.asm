.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, dil
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
sbb eax, 1081973675
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
btc dx, bx
cmp dil, -124
xor sil, dl
cmovp si, di
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xor edi, 33
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
cmovs cx, cx
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
movzx ax, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 60
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
not di
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 52
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
xchg rcx, rdx
xor al, bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 35
test edx, 573099753
test dil, 77
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub di, 10
cmovz ebx, ebx
xor bx, 85
test edx, 573099753
sub al, 99
add dl, -114 # instrumentation
cmovl bx, ax
test bl, dl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], di
add dl, dl
cmovnbe rsi, rdx
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
cmovnl rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
