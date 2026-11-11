.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ecx, eax
movsx ebx, bx
bts dx, bx
btc si, bx
and cx, cx
and cl, -118
cmovnb ax, di
test cl, -31
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
adc al, -117
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb sil, sil
movsx rcx, al
bts rdx, 80
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
mov bl, al
sub dil, -40
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 46
xor ebx, -62
add dl, cl
xor ecx, eax
test rsi, rdi
neg rcx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
btr rsi, rsi
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
cmp cl, bl
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
cmovl cx, bx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 56
bt eax, ebx
add al, 116 # instrumentation
cmovns edx, eax
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
imul rsi, rdi
or ax, 48
add al, bl
btc rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
