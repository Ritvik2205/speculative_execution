.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -71
and cx, -8
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
btr di, cx
xor dl, cl
bt ax, dx
or al, bl
or dil, -78
test cl, cl
xor dil, -124
or al, sil
or dil, al
xor al, -26
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
