.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
sub cl, al
dec al
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sbb al, 57
dec al
add al, cl
or dl, bl
sub al, 11
sbb al, -4
xor dl, bl
test bl, dl
cmp al, -1
sub bl, cl
or al, dil
adc bl, 79
sbb al, 57
test cl, -52
or al, cl
adc dl, bl
sub dl, dil
and ax, -12738
sbb al, 54
jmp .bb_0.1
.bb_0.1:
adc cl, -54
add al, dil
or cx, 59
cmp rax, -1070057082
test bl, -116
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
