.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
lea rax, qword ptr [rsi + rsi + 1]
sub dil, cl
xchg ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
adc bl, -76
adc cl, sil
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
