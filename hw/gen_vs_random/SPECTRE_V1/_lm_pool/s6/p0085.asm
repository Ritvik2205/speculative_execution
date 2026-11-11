.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
sbb al, 49
imul al
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
sub di, 26
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 67
cmovb ax, cx
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
