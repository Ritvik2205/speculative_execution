.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
test al, bl
not dl
or cl, 30
and eax, -829294476
and rax, -1931765367
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or al, -22
and bl, dl
jmp .bb_0.1
.bb_0.1:
test rax, -363019044
xor rcx, -2
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
