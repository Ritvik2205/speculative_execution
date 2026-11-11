.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc edi
or dil, dl
adc al, 43
or bl, bl
xchg rdx, rsi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor ax, -29507
sbb al, -39
test dl, 114
adc sil, -63
adc al, 43
and al, 82
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xor dl, sil
bt di, si
test dl, dil
mov dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
