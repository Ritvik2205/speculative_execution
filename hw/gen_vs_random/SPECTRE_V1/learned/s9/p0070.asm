.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
or edx, 22
xor al, 54
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
sub cl, bl
sub rax, -1628299544
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
not bl
test rsi, -1408527332
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
