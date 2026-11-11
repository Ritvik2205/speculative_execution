.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
cmp rax, 900122030
adc si, 6
sub sil, bl
not dil
sbb dil, -93
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sub cl, al
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, cl
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
