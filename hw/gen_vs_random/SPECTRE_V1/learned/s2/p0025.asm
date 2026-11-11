.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
test al, 59
cmp bl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setnb cl
cmovno si, ax
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
