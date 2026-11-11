.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and bl, sil
or al, -78
test al, -7
and cl, -71
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
test sil, -96
and al, 106
test edi, -1252846009
or dil, -76
xor al, cl
and ax, -12519
or ax, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
