.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 114
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
test sil, 29
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
test cl, dil
cmp rcx, 30
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
adc bl, dl
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
