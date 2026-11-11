.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
sbb ax, -14164
and sil, dl
lea rsi, qword ptr [rbx + rdx]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 10
add cl, dl
and bl, 89
xor al, 89
add al, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
