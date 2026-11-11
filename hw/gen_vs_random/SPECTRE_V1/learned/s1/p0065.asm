.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 46
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, dl
and rax, -273199823
add dil, bl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 4
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
adc dl, al
lea di, qword ptr [rsi + rax + 63231]
sub dl, al
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
