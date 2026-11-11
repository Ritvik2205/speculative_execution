.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
test sil, dil
or al, bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test dl, cl
and bl, 68
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test rbx, 33
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
or al, -61
and cx, -8
and al, 106
and ax, -122
bt bx, di
and rax, -1701787862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
