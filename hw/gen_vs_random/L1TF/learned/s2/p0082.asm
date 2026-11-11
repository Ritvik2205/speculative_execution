.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
lea si, qword ptr [rcx]
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
sbb bl, dil
sub al, -97
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or al, -5
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
