.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
sbb dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
