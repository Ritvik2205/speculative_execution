.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 23
sub dil, 35
xor dil, -23
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
sbb cl, 45
adc al, dil
xchg al, sil
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
adc cl, -85
xor al, -60
adc al, dl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
or al, al
test ebx, 6
test al, 57
and bl, al
sub cl, -94
sub cl, dl
sub dl, 107
add dl, cl
add cl, al
sub al, 96
xor ax, 45
sbb al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
