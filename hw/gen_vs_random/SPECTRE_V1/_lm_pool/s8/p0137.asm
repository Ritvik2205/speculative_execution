.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, si
neg edx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rsi, 53
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jb .bb_0.3
jmp .bb_0.4
.bb_0.3:
and dl, bl
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
sub bl, -19
sub dl, 96
mov cl, sil
lea rdi, qword ptr [rcx + rdi]
bswap rsi
lea bx, qword ptr [rsi + rcx]
adc bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
