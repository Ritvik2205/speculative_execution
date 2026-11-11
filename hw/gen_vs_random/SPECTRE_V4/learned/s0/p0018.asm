.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
cmp rax, -1547540200
test eax, 1340292467
test dl, al
add al, -1
and bl, -119
adc al, 41
add dil, al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
adc cl, 31
test al, 18
and al, cl
add al, -127
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmp sil, dil
xchg ebx, ecx
add al, -4
sbb dil, 29
not rcx
xchg dil, al
bt si, cx
sub sil, al
bts bx, 42
mov al, bl
mov sil, cl
adc bl, -20
sbb bl, -75
or al, dil
sbb dl, -62
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
or al, al
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
mov cl, -38
and ax, 13045
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
