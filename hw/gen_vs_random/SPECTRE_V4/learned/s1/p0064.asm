.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, bl
sbb cl, 45
sub bl, al
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
sbb al, 102
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and cl, 126
dec al
adc bl, 127
sub cl, 92
sub al, 54
sub al, sil
sbb sil, -124
or ax, 57
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
