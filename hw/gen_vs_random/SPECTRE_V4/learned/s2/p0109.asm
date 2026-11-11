.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
adc al, 43
sub cl, 78
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 21
adc bl, 97
sbb bl, 121
adc al, dil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
sbb dl, -62
or sil, -47
or dil, cl
cmp rax, 1682181214
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add dl, -8
sub al, 86
neg cl
adc cl, sil
add dil, cl
and dl, bl
sbb bl, sil
xor sil, 86
cmp sil, 127
sbb sil, al
adc sil, dil
bt si, ax
jmp .bb_0.1
.bb_0.1:
xor al, bl
sbb bl, 121
btc esi, 63
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
sub bl, cl
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
