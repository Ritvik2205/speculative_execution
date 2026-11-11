.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 17
or ax, 11821
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
lea bx, qword ptr [rdx + rax]
sub bl, -96
cmp dil, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
