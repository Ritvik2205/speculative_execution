.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
jmp .bb_0.1
.bb_0.1:
or al, bl
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
cmovnle rax, rsi
jmp .bb_0.2
.bb_0.2:
test cl, 99
and bl, dil
sbb al, dil
lea rdx, qword ptr [rax + rbx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
