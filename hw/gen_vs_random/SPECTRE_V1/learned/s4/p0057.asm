.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
cmovno ax, cx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, -115
sbb dil, dl
movzx edx, di
sbb al, al
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
