.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
lea ecx, qword ptr [rdi]
setb al
add dil, dl
sub cl, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, bl
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
