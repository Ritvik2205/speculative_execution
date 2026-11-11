.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
btr dx, 245
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
add al, -29
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
or rbx, -107
sbb sil, dil
cmovnz rdx, rcx
cmp dl, cl
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
or eax, -646827727
test dil, al
mul cl
cmovnp rax, rsi
or ax, -26182
sbb dil, 87
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
sub rbx, 101
xor dil, -23
xor dil, cl
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
cmovnle rax, rcx
xor cl, cl
mov dl, -124
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
cmovs rax, rbx
or cl, cl
sub ax, -1393
sbb dil, 1
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
add rdx, rax
sbb al, bl
xchg bl, bl
xchg rcx, rcx
cmovnp edx, esi
cmovl rcx, rdi
cmovns bx, di
add bl, 102 # instrumentation
cmovnp edx, ebx
adc rax, rdx
cmp cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
