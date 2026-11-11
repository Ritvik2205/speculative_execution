.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rbx]
bts esi, 56
btc edi, 44
btr ax, bx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
test esi, 96
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
add sil, 12 # instrumentation
lea rax, qword ptr [rcx + rsi]
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
add bl, -92 # instrumentation
setnz sil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
