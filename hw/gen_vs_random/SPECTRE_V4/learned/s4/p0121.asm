.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 1
xor dl, cl
xor bl, cl
or al, -50
sbb al, 95
mov dl, -124
sbb bl, -75
xor rax, -1522567562
jmp .bb_0.1
.bb_0.1:
cmp ax, -22704
xor rax, -117
test al, 52
xor al, 124
dec bl
cmp al, 116
and cl, 32
test al, 57
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
test al, -38
sub al, 86
sbb sil, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
