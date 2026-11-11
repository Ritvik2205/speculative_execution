.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, si
adc bl, -76
sbb dil, dl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, 86
jmp .bb_0.2
.bb_0.2:
add cl, 88 # instrumentation
sbb cl, 7
sub bl, sil
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
