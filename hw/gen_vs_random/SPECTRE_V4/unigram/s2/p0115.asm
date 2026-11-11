.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and al, 92
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 85
add ecx, 99
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
mov dil, 87
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
mov rbx, rcx
adc cl, al
movsx cx, bl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
bts rcx, rdi
cmp rdi, 28
dec dl
cmovz rdx, rsi
adc cl, -86
cmovnp ax, di
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
cmovnz rdi, rcx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
mov cl, al
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 39
sub dil, dl
btr bx, ax
test sil, sil
cmp cx, 0
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
movsx cx, al
sbb dx, 2
cmovo ax, dx
bt rdx, rax
add dl, -25 # instrumentation
cmovs rax, rbx
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 3
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
imul rsi, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
cmp dil, cl
cmovnle cx, dx
adc bl, al
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
