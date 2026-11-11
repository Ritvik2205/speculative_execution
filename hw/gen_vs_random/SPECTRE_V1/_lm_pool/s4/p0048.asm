.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
add al, 18
xor cl, 78
xor dil, al
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
