.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
not sil
btr si, dx
add bl, -101 # instrumentation
cmovz ecx, ecx
not cl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnz eax, edi
cmovbe rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and ax, -16777
or rdx, 1
test dl, dl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
movsx cx, dil
add bl, -84 # instrumentation
cmovb dx, si
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
mul al
btr bx, 42
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
btr rbx, rdi
cmovnp eax, edi
btr bx, dx
dec rcx
sub al, 0
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
movsx ebx, cx
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and al, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
sub cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
bt rcx, 236
adc bl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
sbb rsi, 117
imul bl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
movzx edx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
