.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
cmp rdi, 28
adc cl, 6
add al, -55
or bl, 111
xor al, 124
mov dil, dl
add dil, bl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
mov sil, al
add eax, 544045319
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
cmp dil, cl
sbb sil, bl
movzx bx, dl
sbb al, 95
sbb dl, 75
xor cl, 88
sbb cl, 12
xchg dil, cl
cmp ebx, -19
sub al, 96
sub bl, dil
or ax, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
