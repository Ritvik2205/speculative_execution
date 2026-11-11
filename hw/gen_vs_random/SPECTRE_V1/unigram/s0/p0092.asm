.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rbx, rbx
cmovnle rax, rax
add esi, 83
bts rdi, rsi
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and bl, -73
movsx rdi, bx
cmovle rsi, rdx
cmp sil, dil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
or bl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 38
add bl, 26 # instrumentation
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
