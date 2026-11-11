.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc rdx, rcx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
imul cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
mov rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
imul rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
sub dil, 35
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, -1056713114
test bl, -16
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
bswap edi
cmovbe cx, cx
cmp dl, 83
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
mov al, 125
sbb dl, 75
neg ecx
inc cl
sub ecx, -107
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and eax, ebx
neg esi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmp eax, 64
cmp cl, dl
cmovno bx, bx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
movzx ax, sil
sub rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
