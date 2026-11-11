.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
cmp dil, 51
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
