.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
test al, -7
and cl, -71
and bx, 81
xor bl, al
jmp .bb_0.1
.bb_0.1:
and bl, 68
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test dil, -51
xor cx, -18
and cl, al
and sil, 89
test cl, cl
or dil, dil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
