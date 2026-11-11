.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or ax, -18131
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
bt eax, ecx
jmp .bb_0.3
.bb_0.3:
add dil, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
btc ax, bx
jmp .bb_0.4
.bb_0.4:
add bl, 89 # instrumentation
sbb sil, dl
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
