.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub dl, bl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and cl, -57
lea rbx, qword ptr [rdx]
sub al, dl
lea rcx, qword ptr [rax + rdx]
xchg al, dl
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
sub ax, 124
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
