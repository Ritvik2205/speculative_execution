.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
lea ax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
sub al, bl
cmp si, -11
lea rcx, qword ptr [rdx + rbx + 82]
sub al, dil
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
bt ecx, 204
lea bx, qword ptr [rbx]
setle cl
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
