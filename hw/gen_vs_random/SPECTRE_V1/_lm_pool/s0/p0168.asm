.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
or ecx, 45
mov bl, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
add al, al
xor al, sil
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
setp bl
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
