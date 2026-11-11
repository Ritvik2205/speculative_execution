.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
sub bl, -96
not bl
sub al, -3
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
seto dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 92
xchg bl, cl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
imul rax, rbx, 3
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
