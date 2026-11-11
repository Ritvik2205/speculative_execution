.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
bt ebx, 107
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
xor bl, 2
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
xor bl, 2
cmovle eax, edx
or rax, -2043376621
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
cmovnbe si, dx
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
cmovo ebx, edi
btc rdx, rax
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
