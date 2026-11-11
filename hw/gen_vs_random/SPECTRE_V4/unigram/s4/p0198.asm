.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 28088
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], esi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 1
cmovb eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
cmovnle eax, edi
and si, 68
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
cmovnl rdx, rdi
cmp di, 32
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 75
sub dl, cl
or dl, 56
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
mov sil, 73
cmp si, cx
test bl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
btc ecx, 46
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 95
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
xor ax, 28088
cmovz esi, edi
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 59
add al, al
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
test si, bx
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
sub al, 98
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 23
cmovnp dx, di
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 29
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 90
xor rcx, rdi
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
