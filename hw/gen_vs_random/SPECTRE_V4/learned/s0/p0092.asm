.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 23
and ax, -14374
cmp cl, 49
test dl, -125
and sil, -84
xchg al, bl
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
mov bl, dil
xchg dl, al
adc al, 116
and al, 5
adc dil, -48
and dil, cl
xor eax, 167244411
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
