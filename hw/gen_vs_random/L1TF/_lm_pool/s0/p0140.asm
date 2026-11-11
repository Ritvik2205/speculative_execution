.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and ebx, 108
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
or cl, 105
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
sbb cl, al
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
