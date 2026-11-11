.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
test sil, dl
adc bl, al
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
xor al, 45
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
jmp .bb_0.1
.bb_0.1:
test rdi, rcx
cmovb bx, di
lea rdx, qword ptr [rbx + rsi + 55]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
