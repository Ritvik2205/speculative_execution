.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
btr rbx, rdi
cmovnp eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
add bl, -84 # instrumentation
cmovb dx, si
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
mul al
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
movsx ebx, cx
movzx edx, cl
adc bl, al
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
sub cl, al
movsx cx, dil
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
not cl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
btr bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
not sil
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
sbb rsi, 117
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
sub al, 96
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
imul bl
bt rcx, 236
btr bx, 42
test dl, dl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
btr si, dx
cmovbe rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and ax, 25163
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
cmovnz eax, edi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
or rdx, 1
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
add bl, -101 # instrumentation
cmovz ecx, ecx
dec rcx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
