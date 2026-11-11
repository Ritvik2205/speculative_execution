.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 72
and sil, 37
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
inc al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
sub dil, -70
lea ax, qword ptr [rcx + rsi]
lea rsi, qword ptr [rdx + rdi + 99]
bt bx, cx
lea rsi, qword ptr [rax + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
