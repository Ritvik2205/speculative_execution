.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
sub cl, al
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
add sil, -68
add dl, bl
inc rdx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
lea ax, qword ptr [rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
