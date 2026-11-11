.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
sbb si, 70
xchg rbx, rdx
and eax, -409673666
or cl, 105
bt edx, edi
test cl, 26
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, 28
adc bl, -14
or eax, -62
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
