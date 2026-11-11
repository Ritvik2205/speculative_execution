.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
xor cl, dl
test cl, 7
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and dil, 58
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 91
sbb dl, -26
cmovnp bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
