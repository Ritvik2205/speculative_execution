.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
or al, -24
xor al, 9
test al, 91
xor rax, -1499464454
and dl, -73
xor al, -4
xor cl, 98
xor dil, 124
xor dl, -59
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
