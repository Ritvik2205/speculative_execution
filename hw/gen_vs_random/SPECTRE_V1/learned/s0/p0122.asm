.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
cmovno di, cx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
or esi, -74
sbb edx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
