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
sub al, 50
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, -94
cmovns bx, di
mov rcx, 4219775168754920203
sub al, dl
cmovo rbx, rdx
xor bx, di
not rbx
test cl, -89
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
btc rsi, 140
test bl, al
imul si, bx, -16
and cx, 17
adc al, 69
cmovnz edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmovnb ax, ax
cmovnbe rcx, rax
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmovnl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 80
cmovb edx, esi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
xor dil, dl
or ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
