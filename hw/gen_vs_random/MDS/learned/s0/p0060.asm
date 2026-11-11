.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 16
test rax, -2052112368
xor bl, -27
and al, bl
or al, 16
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or di, 2
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovb ax, bx
and cl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
