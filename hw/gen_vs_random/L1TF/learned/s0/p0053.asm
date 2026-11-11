.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and bl, 89
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rbx + 71]
jmp .bb_0.2
.bb_0.2:
test cl, al
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
adc al, -6
xor dl, sil
xchg edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
