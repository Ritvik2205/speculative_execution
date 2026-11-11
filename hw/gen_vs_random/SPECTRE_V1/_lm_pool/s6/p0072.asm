.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, ax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
mov al, dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, -21
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
or al, dil
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 43
lea rax, qword ptr [rdx + rsi]
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
