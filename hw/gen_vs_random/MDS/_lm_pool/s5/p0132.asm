.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or dl, -97
xor sil, bl
and bl, al
test bl, -114
and dil, 125
xor si, 80
or sil, al
jmp .bb_0.2
.bb_0.2:
test rcx, -613256812
or bx, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
