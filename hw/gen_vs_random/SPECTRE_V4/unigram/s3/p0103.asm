.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, bl
imul rdi
cmp sil, bl
movzx rdx, dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
bt ebx, edx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], dx
adc dx, 80
mul ax
xor ebx, 29
sbb bl, 57
add dl, -99 # instrumentation
not ebx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 53
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
cmovnbe rdi, rax
cmp si, 11
neg edi
sub cl, dil
movzx ecx, cl
cmovp ax, dx
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
add dl, -75 # instrumentation
adc dl, 66
cmovnp rbx, rsi
mov dl, -34
sbb bl, 57
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
add rdx, rbx
and rdi, -2
add cl, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
add dl, 31 # instrumentation
cmovnl ax, ax
add rcx, rbx
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
adc esi, 90
adc dil, dl
imul dx, si
sbb dl, -99
imul cl
and rbx, 69
cmovp ecx, eax
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
add cl, 56 # instrumentation
cmovle rsi, rcx
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
