.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, si
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
sub dl, 41
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 89
btc ax, si
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
btc di, cx
jmp .bb_0.4
.bb_0.4:
setle al
sub rdx, 93
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
