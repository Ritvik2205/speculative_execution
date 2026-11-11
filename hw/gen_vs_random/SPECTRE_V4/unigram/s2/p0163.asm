.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, al
cmp bx, 113
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
or edx, eax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
mov rcx, rsi
add bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
or eax, 143573881
and bl, -60
and esi, 61
or dl, sil
not al
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
or ax, 11396
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi]
and ecx, 71
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 38
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
cmp edx, 4
mov ebx, 817819255
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and al, 49
add dl, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
btc rsi, rcx
sub dl, -16
or dil, al
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 44
dec si
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
btc rdi, 97
dec di
sbb sil, dil
mov dil, 99
and edi, esi
and bl, -30
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
bt di, dx
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and si, -74
cmovnp rcx, rax
sbb cl, dil
adc edi, -83
sub al, al
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
