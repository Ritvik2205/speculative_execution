.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
mov dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
sbb eax, 1002977021
cmp al, 109
adc dl, al
xor al, -66
test eax, 1947430392
cmp dl, bl
sub sil, dil
cmovnbe eax, ebx
xor cl, 88
and cl, al
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 21
adc esi, 46
or al, 27
or dil, dl
add cl, sil
add bl, dil
dec bx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 98
test cl, dl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
mov bl, dil
sbb cl, 45
sbb al, 31
cmp al, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
