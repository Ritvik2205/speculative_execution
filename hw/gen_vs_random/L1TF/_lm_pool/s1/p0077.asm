.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 6
or al, -57
setno bl
sub al, bl
sub dl, -34
cmp cl, dl
jmp .bb_0.1
.bb_0.1:
test al, -56
not al
xchg cl, dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
test rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
