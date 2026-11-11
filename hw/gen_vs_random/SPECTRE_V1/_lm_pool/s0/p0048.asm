.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
test dil, -116
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
or al, 100
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dl, dil
sbb sil, bl
test cx, -17886
or rsi, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
