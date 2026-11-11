.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test dil, 46
test eax, 158941032
xor dil, sil
bt ax, di
and rax, -978188247
xor dl, 8
xor al, 9
xor cl, 15
and ecx, -104
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
