.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
or rdx, -48
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
xor al, 99
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
