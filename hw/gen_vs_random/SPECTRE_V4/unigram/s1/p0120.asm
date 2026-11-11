.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 30
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
or cl, -55
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
mov ecx, -405458789
test ecx, -304234347
and ebx, -4
cmovnbe rsi, rcx
movzx si, al
cmovnbe ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
movsx eax, si
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
mov bl, dil
xchg rax, rdx
and rdx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdx]
neg cl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 28
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
mov rax, rbx
cmovz rax, rcx
neg al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rcx]
cmovl rax, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
or bl, dil
sub dx, dx
imul esi
neg rcx
cmp rdi, 28
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
neg cx
add dl, -91 # instrumentation
cmovl rax, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
cmovo ebx, eax
mov dil, al
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
imul di, di
xor sil, 66
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
btc edx, edi
cmp dl, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
