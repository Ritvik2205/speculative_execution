.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
xor sil, 64
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and dil, cl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
