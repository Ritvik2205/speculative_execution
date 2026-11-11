.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 56
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -19255
test edx, 573099753
imul esi, edx, 69
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
cmovnle cx, cx
cmovns si, si
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg eax, ecx
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and bx, 95
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
or ebx, ecx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
not sil
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
or bx, cx
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
cmovz rdi, rax
movzx ecx, bl
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
cmp al, al
mov dil, -118
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
bt ebx, 228
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
