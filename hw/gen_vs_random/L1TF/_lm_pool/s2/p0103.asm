.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
cmp rdx, 58
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and al, dil
jmp .bb_0.1
.bb_0.1:
test sil, 29
xor bl, dl
jmp .bb_0.2
.bb_0.2:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
