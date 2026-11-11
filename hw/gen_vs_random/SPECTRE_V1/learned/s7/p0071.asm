.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb al, -107
inc eax
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 47
jle .bb_0.3
jmp .exit_0
.bb_0.3:
mov dl, dil
mov bl, dl
sbb bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
