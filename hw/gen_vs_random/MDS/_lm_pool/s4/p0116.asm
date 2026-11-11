.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
test dil, -80
xor sil, al
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
test edi, -1252846009
or dil, sil
test sil, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
or al, sil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and dil, bl
xor al, -89
jmp .bb_0.1
.bb_0.1:
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
