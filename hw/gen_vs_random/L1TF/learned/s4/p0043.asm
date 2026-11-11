.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
sub dil, -39
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
cmp rdi, 26
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
sbb dil, 60
add bx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
