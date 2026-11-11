.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
add cl, -36
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
xchg ecx, eax
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rcx + rdx]
adc dl, sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
not al
sbb sil, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
