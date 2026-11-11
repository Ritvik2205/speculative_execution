.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ecx
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
add dil, bl
sub bl, cl
adc rdx, rdi
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
test al, sil
add ebx, ecx
cmovo rbx, rdi
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
sbb dil, 28
add cl, -42 # instrumentation
adc al, cl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
adc dl, dil
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
sbb dil, 57
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
sbb rax, 183833426
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
imul bl
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
xor dil, bl
bt edx, 86
add dil, 16
test bl, 0
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
adc dil, sil
test ax, -5170
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
cmovl rbx, rdx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
add si, 4
cmovns eax, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovb edi, edi
sbb sil, 108
cmp sil, 88
cmp bl, 13
bts rax, rax
movsx ebx, si
cmovns bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
