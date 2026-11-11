.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
xor bl, -27
and dl, 32 # instrumentation
cmovnbe edx, edi
btc rbx, 102
test dl, -85
and cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xor rdx, -59
and edx, -44
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
cmovno rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and dl, 8 # instrumentation
cmovle si, cx
and dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
btc edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
