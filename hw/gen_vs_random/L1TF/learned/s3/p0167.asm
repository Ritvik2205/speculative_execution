.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 29
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
btc ax, di
cmovns rcx, rdi
sbb al, 61
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 15
or rcx, 70
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
