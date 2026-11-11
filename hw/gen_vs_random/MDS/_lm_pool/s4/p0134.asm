.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
xor rcx, -2
or bl, bl
jmp .bb_0.1
.bb_0.1:
or al, -58
and dl, dl
test bl, dl
test cl, 62
test ecx, -1843375753
and rax, -2039117613
and dil, -62
xor dil, 8
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
or ax, -6817
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
