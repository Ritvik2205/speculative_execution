.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, dl
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
sbb dl, cl
sub dl, cl
add al, -13
bt rbx, 183
xor rdx, 59
or ax, -114
add al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
