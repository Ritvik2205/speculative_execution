.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
test dl, dl
sbb rsi, 117
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
add bl, -84 # instrumentation
cmovb dx, si
movsx cx, dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
movzx edx, cl
movsx ebx, cx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
not sil
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
btr rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
not cl
add bl, -101 # instrumentation
cmovz ecx, ecx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
btr si, dx
and ax, 4
mul al
cmovbe rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
sub cl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
imul bl
or rdx, 1
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
cmovnp eax, edi
btr bx, 11
btr bx, dx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
dec rcx
bt rcx, 189
cmovnz eax, edi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and al, al
sub al, 59
adc bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
