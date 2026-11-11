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
sbb bl, 57
cmovns bx, di
mov rcx, 4219775168754920203
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 66
btc rbx, rcx
or al, al
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
xor bx, dx
or dl, al
or al, 96
bt edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rax
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
add ebx, 3
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sub eax, -523763262
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
not dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
mov rcx, 5862286138240743445
xor dil, al
xor edx, 34
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
