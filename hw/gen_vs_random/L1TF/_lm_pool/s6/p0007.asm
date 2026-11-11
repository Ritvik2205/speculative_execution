.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 72
cmp rdx, 60
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
sbb edx, 23
or bl, 114
add bl, 68
cwd
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
