.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
lea ecx, qword ptr [rbx + rbx + 46]
mov cl, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 61
or eax, -126
xor al, bl
sub al, -82
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
