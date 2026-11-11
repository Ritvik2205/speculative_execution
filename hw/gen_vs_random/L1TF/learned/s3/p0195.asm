.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add dl, -70
sub cl, bl
jmp .bb_0.1
.bb_0.1:
adc bl, -14
jmp .bb_0.2
.bb_0.2:
or dil, bl
or dx, 55
cmp bx, -21
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
btc ax, dx
cmp dil, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
