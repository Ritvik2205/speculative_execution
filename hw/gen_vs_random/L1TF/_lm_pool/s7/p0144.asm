.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
test ax, 22956
inc rcx
sbb cl, -11
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
add cl, 88
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 88
and rax, 1994547909
jmp .bb_0.3
.bb_0.3:
test al, -82
and dx, 17
cmp sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
