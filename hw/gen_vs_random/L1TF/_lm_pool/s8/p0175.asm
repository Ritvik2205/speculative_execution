.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
sub sil, -99
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmp bx, 90
test sil, 29
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
or dl, cl
cmovle rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
jmp .bb_0.5
.bb_0.5:
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
