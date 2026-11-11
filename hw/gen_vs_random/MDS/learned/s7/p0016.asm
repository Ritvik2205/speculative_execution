.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
xor al, -26
or cl, 30
xor sil, 94
or cl, sil
or bl, al
xor dl, dil
xor sil, -126
jmp .bb_0.1
.bb_0.1:
or cl, dil
or bl, bl
xor dil, 81
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
