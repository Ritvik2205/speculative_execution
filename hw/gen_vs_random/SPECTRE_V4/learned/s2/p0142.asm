.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -119
and dl, 124
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sub sil, -35
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
xor rbx, -99
sub al, 96
and dil, -61
test dl, -125
dec dil
and al, 82
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
