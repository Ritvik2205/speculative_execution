.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe ax, si
xchg ebx, ecx
cmp dil, al
or dx, 55
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rdi + rsi + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
