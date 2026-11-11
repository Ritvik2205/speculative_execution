.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and al, -23
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 94
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov dil, dl
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
xor ax, 913
inc edi
sub sil, -18
sbb al, al
add ax, 23362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
