.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rdx
cmovz ebx, edi
dec al
movzx edi, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rcx]
and esi, 55
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 59
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
cmovnle bx, si
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
sub al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
movzx ecx, dl
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 93
imul eax, esi, 84
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
or eax, ebx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg dx, bx
bts rdi, rdi
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
cmovb rdx, rsi
mov al, 29
xor dl, 85
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
neg sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
xor dx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
