.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or dil, al
not al
or bl, al
xor dil, sil
test dl, -95
and cl, -6
xor rax, -1499464454
and dl, -73
jmp .bb_0.1
.bb_0.1:
test edx, -1561252782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
