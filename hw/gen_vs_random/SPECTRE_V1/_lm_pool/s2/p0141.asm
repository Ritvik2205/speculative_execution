.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, dil
inc al
xor cl, -40
sub dil, al
xchg rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
sbb dl, dil
sub cl, -21
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
