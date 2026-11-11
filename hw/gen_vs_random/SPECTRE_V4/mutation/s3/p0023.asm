.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
btr bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
btr rbx, rdi
bt rcx, 189
add bl, -84 # instrumentation
cmovb dx, si
movsx cx, dil
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
btr si, dx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
adc bl, al
btr bx, 11
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add bl, -101 # instrumentation
cmovz ecx, ecx
adc bl, dl
sbb rsi, 117
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
test dl, dl
mul al
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
cmovnz eax, edi
cmovnp eax, edi
sub al, 127
and al, al
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmovbe rsi, rcx
not cl
or rdx, 1
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
sub cl, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
movzx edx, cl
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
and ax, -6897
imul bl
movsx ebx, cx
not sil
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
