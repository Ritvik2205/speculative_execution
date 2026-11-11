.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
lea cx, qword ptr [rcx]
test cl, 74
jmp .bb_0.1
.bb_0.1:
add cl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 3
sub al, 9
sbb ebx, 9
sub dil, 87
cmovb ax, si
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
