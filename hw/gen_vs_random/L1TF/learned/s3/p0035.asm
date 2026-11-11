.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -71 # instrumentation
adc esi, esi
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
xor al, bl
and cl, 31
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
xchg edi, ecx
jmp .bb_0.3
.bb_0.3:
or eax, -401020526
jp .bb_0.4
jmp .exit_0
.bb_0.4:
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
