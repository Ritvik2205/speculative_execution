.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rbx]
add rax, 6
sub al, dl
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and al, bl
lea ax, qword ptr [rsi + rdx + 32]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
