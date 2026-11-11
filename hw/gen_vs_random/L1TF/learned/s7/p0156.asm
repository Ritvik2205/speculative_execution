.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
lea rcx, qword ptr [rbx + rdx + 43]
and sil, cl
test ax, 13284
bts edx, eax
xor cl, bl
setp bl
or rax, 1362710293
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
