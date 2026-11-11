.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
test bl, cl
sbb al, 118
bts ax, 77
cmp al, bl
lea dx, qword ptr [rcx + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sub cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx]
xchg dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
