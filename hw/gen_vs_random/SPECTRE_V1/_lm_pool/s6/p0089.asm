.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
adc al, -92
sub al, -1
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
test dil, -116
lea ecx, qword ptr [rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
sub al, cl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
