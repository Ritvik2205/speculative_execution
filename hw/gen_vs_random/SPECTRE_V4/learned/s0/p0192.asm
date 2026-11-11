.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and ax, -12738
cmp cl, al
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
xor cl, dil
add al, cl
or cl, bl
xor ax, 13329
xor cl, bl
sbb sil, dil
cmp al, 75
adc cl, -86
xor cl, dil
mov al, 119
and cl, dil
adc bl, 0
or bx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
