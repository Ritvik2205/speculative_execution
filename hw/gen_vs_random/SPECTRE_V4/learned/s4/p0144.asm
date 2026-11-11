.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 51
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
test dl, sil
xor al, 102
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 71
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 46
sbb al, dl
mov dil, bl
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
not dl
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 91
cmovz eax, edi
sub ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
