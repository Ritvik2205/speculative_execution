.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add dl, 92 # instrumentation
cmovnl rcx, rdi
mov si, -8007
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
bts ecx, 0
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
mov eax, -1056201206
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
adc cl, sil
or dil, -104
cmovz ecx, edi
bts rdx, 20
sbb al, 102
cmovl eax, edx
dec al
sub dil, -40
cmp rdx, -49
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
adc dl, 59
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
add al, 116 # instrumentation
cmovns eax, ebx
xchg al, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
test cx, 19367
add ecx, 99
add sil, -10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rsi]
or bl, bl
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 26
movsx cx, dl
imul sil
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
xor rdx, rsi
cmp sil, sil
adc al, cl
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
sbb al, -39
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 71
or sil, sil
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
