.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
setns sil
not dl
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
xor sil, -33
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rsi, 53
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovnz rbx, rcx
sub bl, -6
jl .bb_0.3
jmp .exit_0
.bb_0.3:
sub dl, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
