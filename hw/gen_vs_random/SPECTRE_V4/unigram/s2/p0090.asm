.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
test edx, 573099753
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
cmp dx, 78
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovns bx, dx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
xchg dil, dil
not dx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
sbb bl, -94
sbb ecx, 58
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 42
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 39
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
xor dx, 12
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 23
cmovb esi, esi
test rax, -331426050
cmovz si, si
cmovp cx, di
not bx
cmovnbe rcx, rbx
test al, al
cmovs rdx, rax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
