.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cl, al
cmp di, 98
add dl, cl
not bx
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, dl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
