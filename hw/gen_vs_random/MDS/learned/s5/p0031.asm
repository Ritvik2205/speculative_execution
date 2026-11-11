.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or edx, -78
and ax, -16061
and dl, cl
xor al, bl
test rax, -363019044
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
test sil, -55
or dil, al
xor bl, al
or dx, 125
or ax, 85
xor sil, dl
or cl, dil
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
