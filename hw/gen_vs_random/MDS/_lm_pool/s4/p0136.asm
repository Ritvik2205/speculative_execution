.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 73
or sil, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
test cl, sil
and dl, bl
btr dx, ax
test al, bl
btr bx, dx
jmp .bb_0.1
.bb_0.1:
test al, dil
or dx, 125
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
