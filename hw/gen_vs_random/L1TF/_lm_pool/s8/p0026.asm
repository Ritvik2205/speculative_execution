.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sub dl, sil
sbb sil, dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 11
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 25
bts ebx, 2
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 25
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
