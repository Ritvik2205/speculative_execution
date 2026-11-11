.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
mov bl, sil
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 1
inc rsi
mul ax
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
add cl, -20 # instrumentation
adc dl, cl
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
sbb sil, -124
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
or cx, 59
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
test cl, dl
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and sil, -84
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
imul ebx, ebx
cmp rcx, -121
cmovz edx, ebx
cmovs rsi, rdx
sub di, si
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
test eax, edi
sbb di, bx
add bl, 102 # instrumentation
cmovnp edx, esi
sbb dil, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
test esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
xor rbx, -99
btc di, 83
xor cl, -15
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovbe dx, bx
add bl, -35 # instrumentation
mov dil, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
cmovo edi, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
