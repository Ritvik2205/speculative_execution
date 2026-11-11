.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
cmovno edi, esi
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and cl, -128
test dil, -26
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
adc al, bl
adc bl, 0
xor dil, dl
dec dil
or cx, -74
or eax, 1001462340
adc bl, 127
add dil, -61
test dl, -102
bt si, bx
movsx ax, dil
xor dl, dl
sub al, cl
xchg dil, bl
sub al, -128
or rdi, rsi
and dl, 24
cmp dl, al
mov dil, sil
or cl, -55
adc edx, -125
sub al, 59
test al, bl
xor dl, bl
or di, 0b1000000000000000 # instrumentation
bsf dx, di
or bx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
