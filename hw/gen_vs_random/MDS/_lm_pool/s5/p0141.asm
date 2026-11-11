.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
or ax, -14271
or al, 54
and cl, 79
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor al, 9
xor al, cl
xor dl, -43
xor di, 40
or cl, 7
and cl, cl
and rax, -636362975
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
