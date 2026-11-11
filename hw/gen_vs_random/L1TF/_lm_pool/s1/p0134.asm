.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 13
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
sbb dil, sil
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
adc al, bl
jmp .bb_0.3
.bb_0.3:
test dil, -126
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
