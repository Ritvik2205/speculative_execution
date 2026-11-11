.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, di
or cl, -77
and dl, -73
or sil, bl
test rdx, 83
test cl, sil
jmp .bb_0.1
.bb_0.1:
test al, 127
and cl, dil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
jmp .bb_0.2
.bb_0.2:
and esi, 79
test sil, -55
xor dl, bl
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
