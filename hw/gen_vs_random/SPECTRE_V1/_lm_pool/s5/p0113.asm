.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
mov dil, al
add dil, 72
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub cl, -47
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
cmovnz rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
