.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and sil, dl
sbb dl, bl
sbb dl, bl
add rcx, rdx
adc al, 69
not ecx
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 61
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
mov sil, sil
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
sub rsi, rax
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
btc ax, si
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
test dl, cl
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 30
add ebx, edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
mov sil, sil
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
not edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
adc rax, 1542637830
movzx edx, sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
bt ebx, 228
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
bts rax, 157
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
