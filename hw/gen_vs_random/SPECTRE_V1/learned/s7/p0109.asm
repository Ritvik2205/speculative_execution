.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
adc bl, 102
sub sil, dl
sbb edi, 99
setbe cl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
lea rax, qword ptr [rsi + rdx + 12]
lea cx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
