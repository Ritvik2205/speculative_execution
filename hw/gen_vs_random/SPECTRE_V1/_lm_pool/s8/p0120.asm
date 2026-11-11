.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
lea eax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
sbb dil, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sub dl, cl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
sbb al, dl
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
