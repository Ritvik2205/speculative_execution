.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
sub al, cl
sub al, -128
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
cmp al, 105
xor sil, 55
mov bl, cl
sub al, 26
xor cl, -73
or cl, 83
btc rdx, rdi
or rax, -823069511
cmp rax, 1682181214
or al, -50
sbb al, 31
adc al, sil
sbb al, 43
adc dl, 21
dec dl
xor al, sil
test ax, 2960
cmp bl, dl
test al, -24
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and dil, -23
xor dl, cl
and bl, dl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub dl, dil
test al, 18
or bl, -86
xor dil, 37
cmp dl, 45
add dl, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
