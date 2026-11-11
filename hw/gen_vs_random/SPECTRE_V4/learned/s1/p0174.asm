.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, al
xor dil, cl
sub al, 26
and rax, 37
xor bl, cl
bt edi, edx
or ax, -26182
and bl, 76
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
sub bx, 24
test al, 115
btc rbx, rax
sub dil, -40
sbb al, 54
test sil, dl
xor bl, 126
sub dl, 107
sbb cl, 35
btc rbx, rax
cmp al, 116
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
test dil, al
sbb sil, 24
add al, -55
test eax, -31785616
or al, dil
sbb bl, dil
sub cl, -94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
