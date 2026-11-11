.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb esi, -4
bt rsi, rdx
sbb sil, 126
sbb al, bl
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
setnb al
cbw
lea rdx, qword ptr [rdi + rcx + 38196]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -73
add bl, 99 # instrumentation
sets bl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
add dil, 27
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
