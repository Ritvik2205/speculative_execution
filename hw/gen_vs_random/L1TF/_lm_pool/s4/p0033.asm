.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 79
xor rcx, 92
jmp .bb_0.1
.bb_0.1:
test bl, dl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rcx
and di, 22
or cl, dl
adc sil, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
