.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
or cl, cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
test dl, -119
and bl, 68
and dil, sil
or bx, 80
or rdi, -11
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and si, -121
and ax, 13090
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dil, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
