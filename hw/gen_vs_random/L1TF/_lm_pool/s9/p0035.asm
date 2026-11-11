.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -68
jmp .bb_0.2
.bb_0.2:
and al, bl
sub bl, 15
jmp .bb_0.3
.bb_0.3:
test cl, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
