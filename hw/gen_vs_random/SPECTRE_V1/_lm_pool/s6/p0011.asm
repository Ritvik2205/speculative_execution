.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
xchg rbx, rcx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
sub al, -82
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
