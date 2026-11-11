.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
cmp ebx, -33
bt ebx, 45
xor al, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, 2
or ax, 19104
jmp .bb_0.2
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
cmp cl, 50
jmp .bb_0.4
.bb_0.4:
sub dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
