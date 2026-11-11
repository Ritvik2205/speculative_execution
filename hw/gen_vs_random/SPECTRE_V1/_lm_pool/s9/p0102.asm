.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 58
sbb sil, -78
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
sbb ecx, 24
cdq
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
cmp bl, bl
add eax, 1938514106
sbb bl, 79
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 73
sbb esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
