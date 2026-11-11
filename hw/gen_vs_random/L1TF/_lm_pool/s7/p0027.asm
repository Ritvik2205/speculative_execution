.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
xor bl, dl
xor cl, dl
jmp .bb_0.1
.bb_0.1:
test cl, 22
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and dl, 10
add ebx, 2
test bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
