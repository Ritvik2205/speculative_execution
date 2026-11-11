.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea rdx, qword ptr [rcx + rbx + 12]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
sub rbx, -11
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
xor al, al
mov cl, al
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and dl, -109
test bx, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
