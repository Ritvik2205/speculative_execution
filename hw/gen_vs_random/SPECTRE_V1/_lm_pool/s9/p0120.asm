.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
sbb al, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
test dil, -116
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
add dx, -103
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
