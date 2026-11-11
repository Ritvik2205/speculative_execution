.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ebx
sbb al, 66
test cl, -119
and dil, cl
cmp al, -78
adc bl, dl
sub dil, -11
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb al, 70
add dil, al
sub dl, -16
xor cl, 88
xor ax, 15671
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
