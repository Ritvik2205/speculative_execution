.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or al, 24
and dx, 60
test bl, -114
test bl, -9
jmp .bb_0.1
.bb_0.1:
or dil, -41
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and ax, 19224
btr esi, ebx
xor al, dl
xor cl, 24
bt cx, bx
test cl, dil
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
