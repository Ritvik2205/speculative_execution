.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
xchg dil, bl
lea ax, qword ptr [rcx + rsi]
and bl, cl
cmp rbx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
