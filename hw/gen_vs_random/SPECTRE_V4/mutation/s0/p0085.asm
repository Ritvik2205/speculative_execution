.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 1
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
test dl, dl
sub cl, al
not cl
movsx ebx, cx
btr si, dx
btr bx, 11
not sil
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and ax, -12738
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
adc bl, dl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
add bl, -101 # instrumentation
cmovz ecx, ecx
mul al
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
adc bl, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
movsx cx, dil
add bl, -84 # instrumentation
cmovb dx, si
cmovbe rsi, rcx
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
cmovnz eax, edi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
sub al, 59
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
imul bl
movzx edx, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
btr bx, dx
cmovnp eax, edi
and al, al
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
bt rcx, 236
sbb rsi, 117
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
