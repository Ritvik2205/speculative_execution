.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -73
xor dil, 117
test sil, 16
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
cmp al, -53
sbb dl, cl
cmovno cx, ax
cmp eax, 1521417271
test dil, cl
sbb sil, 24
sbb dl, sil
sub dl, bl
test bl, 110
and cl, -101
sub dl, -16
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or al, cl
or dl, cl
btc rax, rcx
mov bl, cl
adc dil, cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 68
or sil, -47
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
adc cl, al
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
