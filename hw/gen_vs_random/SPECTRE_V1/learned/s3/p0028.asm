.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 39
lea rdx, qword ptr [rdi + rbx + 88]
sub sil, dil
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
sbb dil, bl
add sil, 2
jmp .bb_0.1
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, dil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
sbb al, -112
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
