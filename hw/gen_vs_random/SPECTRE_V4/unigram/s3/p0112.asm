.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe eax, edx
movzx ebx, cl
imul si
and ax, -14374
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
movsx ebx, dx
btr dx, 245
xor rax, rcx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
adc dil, al
sub bl, 56
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
or rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
cmp al, dl
and dl, 126
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sbb bl, cl
test esi, -222751961
adc al, -70
sbb ax, -30070
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
neg cl
adc al, 41
bts rax, 40
add al, -6
cmovo cx, cx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
or ebx, esi
movsx rbx, cl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
imul rcx, rsi, -43
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
cmovns ax, si
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 16
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
