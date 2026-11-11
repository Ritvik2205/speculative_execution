.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb bl, dil
and al, -68
bt bx, cx
xor ax, -24879
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
