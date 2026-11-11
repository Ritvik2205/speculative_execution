.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
xor rdi, 61
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
lea di, qword ptr [rdx]
lea edx, qword ptr [rcx]
add bl, 70
sub cl, sil
jmp .bb_0.1
.bb_0.1:
and sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
