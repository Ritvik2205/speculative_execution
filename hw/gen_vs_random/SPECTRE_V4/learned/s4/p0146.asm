.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 119
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, -94
cmovns bx, di
mov rcx, 4219775168754920203
sub al, dl
cmovo rbx, rdx
xor bx, di
dec dl
sub cl, -74
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
cmovnbe rcx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add dx, -90
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
cmovnb ax, ax
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sub eax, 2
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
mov bl, bl
or sil, 39
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
cmovb rbx, rax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
movsx rdi, bx
xor bl, cl
btc dx, 119
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 42
lea rsi, qword ptr [rdi + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
sbb dx, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
