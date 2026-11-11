.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
or bl, -62
or al, dl
xor cl, al
and dil, -62
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor dil, 124
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
