.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or dil, -76
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or cl, al
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
xor al, 115
jmp .bb_0.1
.bb_0.1:
or bl, 43
xor al, cl
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and sil, -69
or dl, -8
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
