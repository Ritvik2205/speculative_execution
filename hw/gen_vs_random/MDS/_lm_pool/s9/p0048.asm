.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
or dil, cl
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or al, -75
and bl, 68
xor cl, 55
and si, -121
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or bl, -52
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
xor al, sil
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
