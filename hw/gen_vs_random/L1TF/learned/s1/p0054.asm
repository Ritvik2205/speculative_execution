.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 38
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rdi]
cmovb rcx, rdi
cmp cl, 57
and dx, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
