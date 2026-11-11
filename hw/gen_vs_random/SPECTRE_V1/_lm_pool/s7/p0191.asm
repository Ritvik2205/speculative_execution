.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
sbb sil, -78
lea dx, qword ptr [rax + rdi]
lea rcx, qword ptr [rdi + rdx + 98]
adc dl, 107
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
sbb ebx, 37
sub al, bl
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
