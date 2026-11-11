.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
sbb dl, bl
cmp rdx, -19
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
test al, -126
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
sub rcx, 13
or eax, -126
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
