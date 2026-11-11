.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 36
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
test edi, -1249897727
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 28
cmovnp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 32
cmovz rbx, rax
inc rsi
xchg eax, ecx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
cmp dx, di
btc ax, si
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 69
xor rsi, -3
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
cmp sil, 88
test rcx, -2118888343
bt edi, eax
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
test dl, cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
mov dil, -118
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 58
adc si, 54
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
