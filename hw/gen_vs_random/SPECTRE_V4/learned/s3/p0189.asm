.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, cx
cmp rax, -1247892360
sbb al, -52
or bl, bl
sub dl, 107
and cl, cl
sbb al, 43
xor al, -82
sbb al, 54
or ax, -26182
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
cmp cl, 59
sub al, dl
test bx, 24072
xor rax, -111081832
sub cl, -32
xchg esi, ecx
cmp rdx, -49
jmp .bb_0.2
.bb_0.2:
add dil, -84
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
mov dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
xor cl, sil
adc cl, dil
xor ax, 30500
sub dil, al
sbb ax, 7207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
