.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
and cl, 93
lea eax, qword ptr [rdi]
test dil, -126
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and bl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
cmp dil, 97
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
