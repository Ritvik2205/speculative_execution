.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
add dl, dl
or eax, 1802312508
btc dx, ax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
movzx rcx, si
adc bl, 89
sbb cl, 20
cmp edx, 54
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
test al, sil
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
mov rax, rsi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
neg ax
imul ax, bx
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
cmovb ebx, eax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 41
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
cmp sil, 88
sbb bx, 97
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
add cl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
bts bx, 1
add cl, 8 # instrumentation
adc sil, cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
cmovnp cx, cx
cmovb edi, ebx
sub dl, dil
test cl, cl
cmovp si, cx
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 31
sub esi, 46
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, esi
cmovno ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
