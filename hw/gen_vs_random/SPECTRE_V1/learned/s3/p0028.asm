.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 49
xor dl, bl
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
lea rdx, qword ptr [rdi + rcx + 38196]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
add dil, 27
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
btc di, bx
adc di, di
add bl, bl
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
