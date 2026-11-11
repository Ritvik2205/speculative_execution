.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
or sil, dl
xchg rcx, rdx
test ecx, -1293796332
sbb al, -4
cmovz edx, ebx
and al, 49
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
add dil, -61
bswap edx
sbb dil, cl
or bl, cl
test edi, 2142010790
and cl, 126
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and bl, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
sbb al, 31
cmp al, 115
and dil, -120
test cl, -119
sub cl, 18
add dil, -84
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb al, -43
mov sil, dl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
