.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
cmp cl, dl
sub cl, -21
and rax, 2134929425
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
cmp ebx, -33
sbb bl, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, bl
xchg dl, sil
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
