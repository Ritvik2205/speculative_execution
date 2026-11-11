.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
sub al, dil
xor sil, sil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
lea rax, qword ptr [rdx + rax + 32]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
