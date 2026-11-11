.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and cx, -117
and al, -12
test sil, 68
and cl, bl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
xchg cl, sil
xor al, 23
xor al, 57
not sil
xchg edi, eax
sbb al, bl
or si, -84
and sil, -84
sbb dil, 93
xor dl, bl
sub al, 69
and dil, cl
sbb al, 70
xor di, 79
test dl, 114
sub al, 29
adc dl, 20
and di, -65
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
add dl, 109
mov al, cl
test edi, 2142010790
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
