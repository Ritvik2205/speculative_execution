.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 46
sbb dl, 127
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, 96
sbb eax, 1392087754
sub al, bl
lea si, qword ptr [rdx + rcx + 60]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 12
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and cl, bl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, -114
and si, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
