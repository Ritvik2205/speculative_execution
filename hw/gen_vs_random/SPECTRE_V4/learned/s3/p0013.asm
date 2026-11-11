.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
add dl, al
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
btc rsi, rdx
xchg rcx, rax
add al, bl
xor al, -2
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
bt edx, 94
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
xor cl, -101
sub al, 50
movzx ecx, sil
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
sbb al, bl
sbb cl, -104
jmp .bb_0.1
.bb_0.1:
mov rdx, 71
and eax, -37
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
btr bx, dx
cmovz rdi, rcx
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rsi, rdx
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
