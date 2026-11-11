.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
xor dil, -37
cmp al, cl
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
lea di, qword ptr [rdx + rsi]
jmp .bb_0.1
.bb_0.1:
sub al, -82
sub al, dil
jmp .bb_0.2
.bb_0.2:
add dil, 88 # instrumentation
sbb dil, 67
imul dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rax, 2134929425
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
