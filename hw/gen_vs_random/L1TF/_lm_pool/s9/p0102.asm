.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and al, -68
jmp .bb_0.1
.bb_0.1:
add di, 86
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
sub al, 26
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
lea ax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
sub dl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
