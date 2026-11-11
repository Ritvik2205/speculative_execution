.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 69
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
adc cx, 30
or sil, cl
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
lea rax, qword ptr [rdi + rsi + 10]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
