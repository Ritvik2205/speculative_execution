.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
or dil, 98
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and di, 29
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
