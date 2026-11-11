.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
or eax, -126
cmp cl, dl
lea rcx, qword ptr [rbx + rsi]
xchg rsi, rdx
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sub edi, 65
and rcx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rcx]
adc edx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
