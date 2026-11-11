.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
test sil, 17
xor sil, dil
xor dl, -19
or sil, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
or dil, -71
and dl, -73
xor di, -83
xor al, 8
or al, sil
and al, 49
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
