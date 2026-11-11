.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
setnb cl
test sil, 13
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and bl, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
