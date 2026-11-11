.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
mov cl, dil
test cl, 76
xor rax, 20
xor rdi, -80
sbb eax, -1165635662
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea rbx, qword ptr [rdx + rdi]
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
