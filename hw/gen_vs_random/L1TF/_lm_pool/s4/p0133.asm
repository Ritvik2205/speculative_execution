.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
inc rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
cmp bl, 123
xor cl, dl
cmp sil, bl
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rax, -109
add edi, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
