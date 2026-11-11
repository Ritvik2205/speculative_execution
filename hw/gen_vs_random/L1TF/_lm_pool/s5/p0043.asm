.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
lea edx, qword ptr [rdi]
or dil, cl
sub bl, 15
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rcx
lea rbx, qword ptr [rdx]
btc ax, si
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
lea rcx, qword ptr [rbx + rdx + 44]
and sil, 93
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
sbb rax, 1183957102
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
