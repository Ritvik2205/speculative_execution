.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor al, 89
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
btc si, ax
test dil, -126
and bl, cl
btc cx, 32
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
