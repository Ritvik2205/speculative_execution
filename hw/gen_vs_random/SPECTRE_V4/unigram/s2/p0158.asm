.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
xchg bl, bl
btr rcx, rcx
and eax, -1145483375
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
cmovle bx, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
test rbx, 1219566903
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 44
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
and eax, -784085938
xor rdi, -72
cmovno esi, ebx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
cmovbe si, di
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
sbb al, cl
cmovp edx, eax
imul eax, edi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
mov bl, dil
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdi
sub rcx, 126
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
xchg eax, ecx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
neg bl
btc rcx, rbx
sbb sil, -11
add dil, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
or sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
test esi, edi
and dx, cx
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
test al, -24
add bl, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
and cl, 32
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
