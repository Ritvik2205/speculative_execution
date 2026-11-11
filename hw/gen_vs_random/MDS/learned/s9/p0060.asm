.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
btr dx, si
test al, dl
and rax, 79
bt dx, bx
xor al, 34
and si, -121
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or dl, bl
test bl, -114
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
