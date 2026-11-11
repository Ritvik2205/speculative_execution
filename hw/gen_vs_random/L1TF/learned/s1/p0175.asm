.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
and ax, 37
adc dil, 120
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and bl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
