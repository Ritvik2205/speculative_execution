.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
sub dil, -111
add rdi, 72
lea rsi, qword ptr [rdx + rbx]
sbb bl, dil
sub al, 63
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
lea dx, qword ptr [rbx]
cmp sil, 25
jmp .bb_0.1
.bb_0.1:
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
