.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rbx
test dl, -36
and sil, bl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
xor cl, 71
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
