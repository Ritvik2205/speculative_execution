.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
test al, -70
cmovb si, ax
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
xor dl, 9
jmp .bb_0.1
.bb_0.1:
test dil, -126
add dil, 88
jmp .bb_0.2
.bb_0.2:
test bl, -92
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
