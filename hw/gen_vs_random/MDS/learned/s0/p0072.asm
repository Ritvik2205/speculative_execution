.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
test al, -7
xor rax, -1657511731
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and sil, dil
and sil, 89
jmp .bb_0.1
.bb_0.1:
test al, sil
and dl, -73
or al, bl
jmp .bb_0.2
.bb_0.2:
xor sil, -126
xor al, cl
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
