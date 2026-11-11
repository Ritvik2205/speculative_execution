.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
xor bl, cl
cwde
jmp .bb_0.1
.bb_0.1:
or al, sil
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add bl, 68
add dil, sil
jmp .bb_0.3
.bb_0.3:
test rdx, rbx
test bx, 8
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
