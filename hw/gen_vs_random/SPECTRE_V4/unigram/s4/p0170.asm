.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
sub al, dl
cmovno eax, ebx
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
xor cl, -101
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
sub dil, -10
add cl, -75 # instrumentation
adc cl, 73
mov edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
test eax, 1880179600
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
sbb eax, 2051746726
mov rsi, rbx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
test al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdx
cmovns cx, si
cmovb eax, esi
add cl, -42 # instrumentation
adc al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
adc edi, 62
and rbx, 69
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add al, 56 # instrumentation
cmovle rsi, rax
cmovs edx, eax
cmp sil, bl
test esi, 91
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 80
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
movzx edx, dx
sbb al, sil
and rbx, 69
mov cx, 94
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 78
xor bl, al
dec dil
cmovnp si, bx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmovnbe cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
