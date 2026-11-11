.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -16
or dl, cl
adc bl, al
and al, -1
cmp dil, cl
xchg bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
xor al, -31
adc dl, cl
sbb bl, -98
sub al, 54
bt rax, 59
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
imul rdx, rsi, 49
sub cl, 92
test ax, -6841
sbb sil, -11
cmp al, 75
test bl, 87
xor dl, al
sub cl, -94
or dl, cl
sbb ax, 10407
adc sil, -63
mov bl, dl
sub edx, 73
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
adc dil, al
sbb sil, al
and al, -87
and cl, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
