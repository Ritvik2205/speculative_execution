.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
or bl, sil
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
test cl, 54
xor dl, -43
jmp .bb_0.1
.bb_0.1:
test al, -7
or al, -22
jmp .bb_0.2
.bb_0.2:
or esi, edi
or sil, al
test al, bl
xor al, sil
xor dl, dil
xor si, 80
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
