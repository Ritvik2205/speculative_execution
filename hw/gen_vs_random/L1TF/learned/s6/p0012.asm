.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
test cl, 59
or rcx, 55
test bl, 84
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
