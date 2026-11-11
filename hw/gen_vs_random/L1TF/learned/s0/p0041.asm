.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 85
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
xor cl, 89
xchg eax, edx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
add sil, -61
and ax, 26813
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
