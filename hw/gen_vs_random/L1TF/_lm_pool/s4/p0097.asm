.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
lea ecx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
setb al
add dil, dl
sub cl, dil
lea bx, qword ptr [rdi + rsi + 9]
test cl, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
