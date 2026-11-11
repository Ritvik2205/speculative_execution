.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 75
adc al, 80
and bl, cl
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add ax, -10746
xor al, dil
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
