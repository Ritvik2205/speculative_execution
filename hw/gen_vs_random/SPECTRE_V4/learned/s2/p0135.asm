.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 24
xor di, cx
add dl, bl
and dl, cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
xor dl, -123
or eax, 1001462340
adc dil, dl
sub cl, -73
sbb dil, 11
movsx bx, dl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 14
adc dl, dil
mov al, cl
and al, 59
and dl, sil
or al, -16
sbb al, 54
mov al, dil
adc dl, 91
or dil, cl
mov al, 9
and al, 49
sbb al, cl
neg dl
mov al, sil
sub cl, -51
mov al, dl
sub sil, 71
cmp dl, 95
and al, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
