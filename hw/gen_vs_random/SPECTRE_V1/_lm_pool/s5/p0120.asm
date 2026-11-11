.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
lea ebx, qword ptr [rax + rax + 18654]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rax, qword ptr [rax + rbx]
sbb cl, 105
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
jl .bb_0.4
jmp .exit_0
.bb_0.4:
lea ax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
