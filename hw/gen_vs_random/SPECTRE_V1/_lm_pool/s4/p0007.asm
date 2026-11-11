.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
lea eax, qword ptr [rdi + rsi]
lea ax, qword ptr [rsi + rbx + 2]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
cmp dl, dil
cmp eax, 692647572
xor rdx, rdi
add sil, bl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
