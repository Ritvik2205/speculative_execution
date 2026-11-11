.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
test al, -99
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax]
sbb cl, al
add dil, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
