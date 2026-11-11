.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 72
cmp eax, 39856325
sub al, -3
sub cl, -49
add cl, -20
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 61
sub sil, bl
jmp .bb_0.1
.bb_0.1:
test esi, 90
xor dl, al
and al, -68
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
