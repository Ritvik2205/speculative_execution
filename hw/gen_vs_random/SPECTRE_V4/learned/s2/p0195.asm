.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and dil, dl
or eax, 1001462340
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
mov dl, sil
cmp cl, 100
xor ax, -22861
cmp eax, -2073187604
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
adc dil, -15
test edx, 1479885278
add dl, al
sub cl, dl
add al, -4
adc sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
