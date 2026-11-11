.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
mov al, cl
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
sbb dl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
add bl, 70
adc sil, al
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
