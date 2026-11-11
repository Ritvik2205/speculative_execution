.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or al, -5
adc dl, sil
sbb ax, -9396
inc dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
jmp .bb_0.3
.bb_0.3:
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
