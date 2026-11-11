.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 63
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
lea bx, qword ptr [rbx + rbx + 49]
xchg ax, dx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmp cl, -71
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx]
cmovl ax, si
bt rdx, rax
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
sbb ecx, 29
sub dil, 95
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 23
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
