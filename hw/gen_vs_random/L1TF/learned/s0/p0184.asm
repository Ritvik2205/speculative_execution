.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
sbb sil, al
adc ax, 87
lea rax, qword ptr [rcx + rbx + 6]
imul al
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
test esi, 100
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax + rsi + 52]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
