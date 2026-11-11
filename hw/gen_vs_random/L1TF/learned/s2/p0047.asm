.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
add rax, 1633593912
sub dl, -34
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sbb al, 61
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
adc cl, -34
cmp al, dl
cmovnp si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
