.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
lea rdi, qword ptr [rcx]
not edx
sbb cl, cl
cmovs rax, rbx
add al, 72 # instrumentation
cmovns dx, ax
sbb sil, -78
xchg bl, bl
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 42
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 96
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
