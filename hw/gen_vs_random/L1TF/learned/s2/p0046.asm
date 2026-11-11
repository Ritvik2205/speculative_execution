.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
adc dil, 120
xchg eax, edx
not ebx
test dx, 14
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 62
lea rax, qword ptr [rbx]
and ax, 26813
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
