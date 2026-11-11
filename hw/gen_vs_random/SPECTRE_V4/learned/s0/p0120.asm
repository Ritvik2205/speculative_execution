.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, 123
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
cmovl rsi, rcx
adc esi, 90
bt esi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
or sil, al
sbb bl, -94
test al, sil
dec bl
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sbb cl, 19
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
add rdi, 105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor ax, 28088
lea ebx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 87
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
imul rdi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovle rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
imul cl
or al, 95
cmovnz edx, edi
mov al, sil
movzx ecx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
