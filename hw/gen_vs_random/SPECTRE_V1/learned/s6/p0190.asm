.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
add rax, 977059290
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rcx, 58
mov dl, al
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 89
cmp al, dil
js .bb_0.3
jmp .exit_0
.bb_0.3:
add sil, 2
sbb cl, 105
adc sil, -77
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
