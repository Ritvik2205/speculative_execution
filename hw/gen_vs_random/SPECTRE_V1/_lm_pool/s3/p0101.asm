.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and al, dl
and bl, 124
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test dil, -116
lea ax, qword ptr [rsi + rdx]
and dil, al
sbb dl, 127
or rcx, 14
jnbe .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
