.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 2
cmp eax, -240917296
sub cl, al
adc dl, dil
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rcx, 91
sub al, sil
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rax
cmp rax, 900122030
sbb al, bl
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
