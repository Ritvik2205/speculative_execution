.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -44
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and al, sil
cmp bl, dl
test dl, -125
xor bl, sil
adc al, 116
sbb bl, 121
bt cx, si
or al, -88
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
cmp rsi, 74
xor al, -31
test eax, -651442446
sub dil, -11
xor dil, cl
sbb bl, dl
xor rdi, -72
cmp rax, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
