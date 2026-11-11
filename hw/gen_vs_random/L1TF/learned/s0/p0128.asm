.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
sub al, 9
lea rbx, qword ptr [rdi + rdx + 46]
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
