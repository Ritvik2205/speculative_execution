.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
and al, cl
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bts rbx, 13
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and dl, -109
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
jle .bb_0.4
jmp .bb_0.5
.bb_0.4:
sbb cl, dil
or di, -85
js .bb_0.5
jmp .bb_0.6
.bb_0.5:
jno .bb_0.6
jmp .exit_0
.bb_0.6:
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
