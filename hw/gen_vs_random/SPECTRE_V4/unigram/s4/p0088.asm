.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
mov rcx, 7
adc al, -59
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovnb esi, ecx
imul bx, bx
imul rbx, rcx
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], 36
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
or bx, -33
sbb edx, ecx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
cmovnle dx, di
test rcx, rbx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
cmovnbe edx, esi
cmovz eax, ebx
xor rax, rdx
cmovno rax, rsi
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
or dil, -104
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 22
xor eax, -1772786275
btr ebx, 156
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
add bl, -101 # instrumentation
cmovz ecx, ecx
neg rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 17
cmovbe rcx, rbx
sub cl, sil
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
neg sil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
sub rbx, 101
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
cmovnb dx, di
sbb esi, 38
cmp dil, dl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovz eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
