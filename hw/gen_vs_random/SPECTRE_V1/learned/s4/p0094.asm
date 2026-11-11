.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
imul al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmp sil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
xor al, -42
and sil, 111
add dil, bl
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
