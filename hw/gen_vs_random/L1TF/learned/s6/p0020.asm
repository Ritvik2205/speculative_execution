.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
xor sil, sil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
lea rax, qword ptr [rcx + rdx]
jmp .bb_0.1
.bb_0.1:
cbw
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
adc al, 70
cmovnbe rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
