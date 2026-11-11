.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
test al, 59
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
lea cx, qword ptr [rax + rdx + 60]
add cl, cl
lea rbx, qword ptr [rdi + rdx]
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
