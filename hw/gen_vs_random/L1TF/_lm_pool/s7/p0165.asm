.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
or bl, -5
and dil, 58
cmovb rcx, rdx
xor eax, -885407671
test sil, 29
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
inc rdx
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
