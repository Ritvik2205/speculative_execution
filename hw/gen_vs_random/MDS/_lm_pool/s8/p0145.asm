.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 16
test eax, -1634766116
and al, -8
and dil, -62
and ax, bx
or cl, 6
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or rbx, -77
test sil, al
test edx, -372470678
btc dx, 146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
