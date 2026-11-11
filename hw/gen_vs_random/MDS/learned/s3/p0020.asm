.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and cl, bl
test al, cl
jmp .bb_0.1
.bb_0.1:
btr bx, cx
not bl
and rax, -1931765367
or al, 37
test rax, 1000448998
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
