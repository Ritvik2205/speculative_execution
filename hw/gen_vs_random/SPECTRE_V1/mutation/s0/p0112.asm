.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
sbb sil, 126
xor dl, bl
cbw
sbb esi, -4
bt rsi, rdx
setnb al
lea rdx, qword ptr [rdi + rcx + 38196]
sbb al, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
add bl, 99 # instrumentation
sets bl
add dil, 27
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and bl, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
