.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -387680856
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
xor dl, -66
cmovl rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
xor rdi, -72
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
cmovnbe ebx, ebx
and rdx, 0b1111111111111 # instrumentation
test si, 36
movzx si, al
dec rdi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
imul si
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
mov cl, -38
sub al, 69
cmp bl, -16
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or bl, -35
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
add cl, 53 # instrumentation
cmovnbe edx, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 73
mul rbx
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
cmovnbe rax, rdx
sub al, 86
xor bl, sil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
and al, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 88
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
sbb cl, 12
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
add cl, 7 # instrumentation
adc di, 84
cmovb dx, si
neg esi
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
movzx rax, bl
and cl, 126
xchg bx, cx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
