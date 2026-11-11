.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
test eax, 899472326
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rbx + rdx]
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
test edi, 41
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
