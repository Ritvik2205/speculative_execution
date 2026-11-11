.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 5
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov al, 7
and al, -23
sbb al, dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and dil, -114
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
add dl, 47
xor bl, dl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
