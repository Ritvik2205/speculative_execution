.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, si
cmp rsi, 53
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -36
not ecx
sub rax, -1628299544
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 32
xchg bl, al
add bl, dl
sub di, 84
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
