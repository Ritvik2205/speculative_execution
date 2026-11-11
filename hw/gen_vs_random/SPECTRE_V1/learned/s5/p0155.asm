.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
cmp eax, 692647572
bt eax, 78
sub dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rsi + rcx]
and cl, 86
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
add sil, dl
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
