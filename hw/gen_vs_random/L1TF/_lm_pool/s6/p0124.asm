.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 18
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 93
sub dl, 41
cmovb bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
or al, sil
jmp .bb_0.1
.bb_0.1:
test sil, 29
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
