.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and al, 33
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
lea ebx, qword ptr [rcx]
and cl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
lea cx, qword ptr [rbx]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
