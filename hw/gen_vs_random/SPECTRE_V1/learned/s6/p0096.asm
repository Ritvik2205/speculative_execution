.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
sub al, -1
lea ax, qword ptr [rdx]
cdq
add al, 18
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
adc al, bl
sub al, -1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
