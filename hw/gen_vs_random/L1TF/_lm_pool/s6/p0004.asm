.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
sub sil, -99
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
sbb dl, -26
sub rdx, 30
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
sub al, 26
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
xor di, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
