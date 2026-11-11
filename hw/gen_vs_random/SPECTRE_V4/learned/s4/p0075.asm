.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -16
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and al, cl
xor dil, sil
sub dil, 35
dec bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or al, al
xor al, dil
adc sil, -63
test dil, cl
or al, -83
add al, dil
add bl, dl
test al, 114
xor al, 30
sbb ax, 7207
or bl, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
adc dl, cl
adc bl, dil
xor bl, -126
test cl, -10
cmp eax, 1521417271
or eax, -1779536330
adc cl, bl
cmp dil, cl
sub al, bl
sub al, 26
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb ax, 10407
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
