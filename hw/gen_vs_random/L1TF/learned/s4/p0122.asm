.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or ax, -10161
and cl, 99
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
xor cl, sil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
btc dx, bx
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
