.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb dl, 127
setz cl
and cl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, dil
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, cl
jns .bb_0.3
jmp .exit_0
.bb_0.3:
cmp dl, 71
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
