.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb cl, 105
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -62
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
sbb ebx, 25
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
test al, 34
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
lea ecx, qword ptr [rsi]
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
