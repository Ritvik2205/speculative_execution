.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 26
lea eax, qword ptr [rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
test sil, 97
sbb eax, 99727957
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
sbb cl, al
and dil, -93
cmovb di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
