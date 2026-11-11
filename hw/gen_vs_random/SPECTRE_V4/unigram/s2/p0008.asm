.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 73
add dil, -71 # instrumentation
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
test dl, sil
or bx, 0b1000000000000000 # instrumentation
bsr di, bx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 97
adc cl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
btc si, 2
cmovle cx, cx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
cmovz esi, edi
add dl, 31 # instrumentation
cmovnl si, si
add dil, sil
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
dec rdi
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 13
test sil, 96
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
movzx rbx, cx
sbb sil, al
and dl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 21
cmovnle edx, esi
add rbx, 49
and rax, 66
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 35
cmovnbe rdx, rcx
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
adc al, dil
adc bl, cl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor edi, 25
cmovnle si, si
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
sub ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
