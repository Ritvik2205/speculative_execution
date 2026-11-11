.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor dil, -5
cmovp edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and sil, 74
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
cmovnp ax, dx
xor sil, -14
or cl, 7
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
