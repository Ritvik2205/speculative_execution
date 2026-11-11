.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdx + rcx + 69]
sbb bl, cl
lea ebx, qword ptr [rdx]
and bl, cl
and bl, -43
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sub dl, sil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
