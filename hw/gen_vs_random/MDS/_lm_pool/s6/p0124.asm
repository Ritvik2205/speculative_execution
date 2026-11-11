.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor cl, 98
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
not dl
test eax, 158941032
or cl, dil
or rax, -141551502
and ax, 5001
test esi, 1857129931
bt si, ax
test cl, -18
xor ax, -6793
test eax, -675944960
xor cl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
