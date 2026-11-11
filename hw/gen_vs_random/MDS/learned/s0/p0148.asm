.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or dil, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
xor cl, dil
and dil, dil
jmp .bb_0.2
.bb_0.2:
or sil, cl
test al, 91
test al, 22
bt cx, dx
not sil
bt dx, ax
or al, dil
test rax, 1214712583
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
