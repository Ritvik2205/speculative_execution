.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
