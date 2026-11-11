.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, al
add al, -112
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
cmp cl, bl
mov sil, bl
add al, -29
sbb bl, -98
adc dl, sil
sub ax, 24426
and cl, dl
sub al, 59
and al, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
cmp dl, dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
