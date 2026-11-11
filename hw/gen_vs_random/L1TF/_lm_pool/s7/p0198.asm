.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
cmp ebx, 20
test bl, 45
xor dil, dl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
jmp .bb_0.1
.bb_0.1:
xor dl, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
