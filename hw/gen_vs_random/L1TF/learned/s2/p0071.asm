.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
or ax, ax
or eax, -401020526
lea esi, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
jmp .bb_0.1
.bb_0.1:
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and di, 86
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
