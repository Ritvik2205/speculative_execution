.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 17
sub rcx, 13
cmp al, dl
add dil, -75
sbb dl, al
xor cl, dl
lea di, qword ptr [rsi + rdx]
test cl, -33
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
