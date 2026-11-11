.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 87
test sil, -96
and sil, 74
xor sil, bl
xor al, -89
xor dl, -19
or dl, dl
and di, 91
and edi, 23
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
xor ax, -23364
xor bl, -61
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
