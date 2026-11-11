.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
test dl, dl
movzx edx, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
dec rcx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
add bl, -84 # instrumentation
cmovb dx, si
and ax, -23308
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
imul bl
movsx cx, dil
not sil
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
sbb rsi, 117
sub al, -84
mul al
cmovnz eax, edi
btr bx, dx
sub cl, al
btr si, dx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
adc bl, al
not cl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
movsx ebx, cx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
or rdx, 1
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
adc bl, dl
and al, al
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
cmovnp eax, edi
bt rcx, 189
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
cmovbe rsi, rcx
add bl, -101 # instrumentation
cmovz ecx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
btr bx, 11
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
btr rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
