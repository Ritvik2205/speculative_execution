.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 55
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
xor al, -120
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
sbb al, 57
test sil, 16
and bl, cl
adc dl, sil
cmp eax, -1538116527
bt eax, ecx
sub bl, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
