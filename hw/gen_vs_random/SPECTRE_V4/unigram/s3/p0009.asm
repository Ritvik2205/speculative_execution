.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 5
mov rdi, -7956777892145474940
and al, sil
add bl, 95 # instrumentation
mov al, 83
imul bl
cmovl rcx, rdx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 69
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and cl, -118
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
mov dl, -124
sbb dl, sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
mul rbx
mov ax, 31802
test dx, 28394
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
adc si, -74
add al, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovbe edx, ecx
add cl, -57 # instrumentation
cmovno rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
add cl, 58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
neg rdx
sub si, si
and dil, dil
imul sil
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
add al, 105 # instrumentation
cmovl esi, ecx
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
bt cx, dx
or sil, -47
cmp sil, dil
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
movsx ecx, cx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and al, 49
btr rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
