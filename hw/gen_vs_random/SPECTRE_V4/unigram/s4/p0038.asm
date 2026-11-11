.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ax, ax
btc rdi, 7
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 57
and bx, ax
and bl, dil
cmovno esi, ecx
add al, -86 # instrumentation
cmovnp ebx, edx
adc bl, -20
or edx, edi
imul eax
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add dl, dl
mov dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
adc sil, dl
add bl, sil
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
bswap rax
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
test bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
btc ecx, 233
test sil, 1
cmp esi, -84
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and bl, -119
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
cmp bl, -79
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
adc dil, -15
add dl, -91 # instrumentation
cmovl rcx, rbx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
btr edi, 54
add bl, 69 # instrumentation
cmovnbe bx, dx
cmovbe edi, eax
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
or al, cl
xor si, -73
add bl, 102 # instrumentation
cmovnp ecx, esi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 80
movzx rdi, cx
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
mov bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
