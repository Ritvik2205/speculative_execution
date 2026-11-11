.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, rdx
imul rbx
cmovnp si, cx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
bt eax, edx
cmp dl, 51
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
cmovnl ax, cx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 43
add bl, 65 # instrumentation
cmovnp ax, di
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
sbb al, 32
sub dl, 43
btc rbx, 6
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 11
btc rbx, 74
sbb bl, al
cmp rcx, 86
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
xchg cl, bl
or al, dil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
btc di, 92
dec rdi
dec rax
neg si
test al, cl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rsi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovo rsi, rdi
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 97
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 23
cmovnp dx, di
adc esi, 90
test bx, -1599
cmp al, 81
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
mov rdx, rax
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
