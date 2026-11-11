.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
cmp rax, -1365488374
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rax]
sbb dil, al
add cl, al
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
or bl, 14
adc bl, -76
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
