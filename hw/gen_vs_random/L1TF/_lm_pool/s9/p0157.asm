.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
lea rsi, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and cl, dl
test esi, 81
sbb dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
