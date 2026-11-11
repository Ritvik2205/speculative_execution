.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, bl
xor dl, bl
sbb sil, 126
lea rdx, qword ptr [rdi + rcx + 38196]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
bt rsi, rdx
setnb al
sbb esi, -4
cbw
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
add dil, 27
and bl, -121
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
add bl, 99 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
