.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 123
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
xor al, 69
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -19255
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
cmovs edx, edi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
sub rax, -701741274
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 61
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rdx
cmovnbe rbx, rax
cmp cl, 32
adc dl, al
cmovnp rsi, rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 56
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
bt edi, ecx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
movzx edx, sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
adc bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmp cl, cl
test eax, 1561062795
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
