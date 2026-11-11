.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
sub al, 127
bt ax, 248
test al, 57
cmovz edi, eax
sbb bl, al
sbb dl, 53
sub dl, cl
neg dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
