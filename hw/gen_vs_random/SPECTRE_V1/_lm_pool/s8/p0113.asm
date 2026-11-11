.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -114
js .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dl
test al, -99
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
inc eax
sbb dl, cl
sbb bl, sil
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and cl, dl
cmp dl, dil
bt edx, 18
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
