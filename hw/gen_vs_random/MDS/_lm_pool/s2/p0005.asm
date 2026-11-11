.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 31082
and eax, -829294476
test al, bl
and al, al
and bx, 66
and dl, -73
test al, 91
or al, dil
xor bx, 24
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and ax, 339
xor ax, -5889
and cl, bl
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
