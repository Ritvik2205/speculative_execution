.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb cl, -69
or cl, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
mov dl, al
and dil, cl
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
mov dl, sil
or dl, al
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
cmp dl, 83
adc al, -70
add cl, dl
mov al, sil
xchg di, cx
xor dx, bx
sub al, -128
sub al, bl
cmp sil, 113
xor dl, -66
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and sil, -84
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and bl, dil
imul ax, di, 101
mov cl, 1
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
adc sil, -2
test dx, 28394
and ax, -197
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
