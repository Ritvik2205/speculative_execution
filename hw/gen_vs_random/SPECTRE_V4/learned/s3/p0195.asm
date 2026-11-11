.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1779536330
and cx, -117
and bl, 76
cmp cl, dil
and al, -124
test dil, bl
and dil, -61
cmp dx, -67
xor al, dil
mov sil, bl
or rax, -943474997
or al, -83
sbb al, 102
dec al
test cl, -31
xor al, dil
adc cl, -54
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
xor ax, dx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor al, dl
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
