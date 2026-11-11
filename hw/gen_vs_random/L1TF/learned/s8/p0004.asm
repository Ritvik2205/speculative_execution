.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
jmp .bb_0.1
.bb_0.1:
test dil, -126
sub al, -97
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
xor dl, al
and dil, 58
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
