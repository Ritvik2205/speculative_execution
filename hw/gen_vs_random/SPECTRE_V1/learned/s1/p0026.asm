.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, cx
mov al, cl
add dl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
add al, -109
cmp sil, 25
dec dl
and eax, 933895314
lea rdi, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
