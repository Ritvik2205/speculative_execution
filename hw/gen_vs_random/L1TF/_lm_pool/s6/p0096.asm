.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sub al, -75
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
test al, -32
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
