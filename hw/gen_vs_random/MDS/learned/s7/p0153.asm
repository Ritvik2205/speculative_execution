.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 14
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or al, cl
bt ax, cx
test cl, bl
or al, cl
or sil, al
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
xor bx, 84
not dil
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
