.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmp rdx, -19
add al, -44
and cl, 86
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
adc al, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
mov bl, dl
xor bl, sil
lea si, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
