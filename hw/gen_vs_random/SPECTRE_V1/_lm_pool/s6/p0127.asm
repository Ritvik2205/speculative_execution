.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
sbb al, 49
lea rsi, qword ptr [rdx]
and bl, sil
cmp al, 62
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 93
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
