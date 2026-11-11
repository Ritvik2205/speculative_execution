.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, si
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dl, 40
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor dil, -124
test cl, 0
and rdx, 24
test esi, 1857129931
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
