.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
and ax, 26813
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
