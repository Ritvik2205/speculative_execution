.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -55
test cl, dl
and di, -34
test al, -24
or dil, al
test esi, -2111618709
neg rax
sbb al, -3
sbb cl, 12
test eax, -251558852
xor sil, bl
add bl, al
or al, al
adc dl, cl
test dl, -125
or bl, dl
add al, -3
add bl, -59
add bl, al
add al, -44
sbb al, -14
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
mov bl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and bl, dl
sub dil, bl
test ecx, -907816607
add eax, 544045319
sub edi, 78
sub cl, 92
and al, 75
sub al, sil
cmp dil, sil
add bl, al
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
xor al, -82
sub al, dl
sbb dil, cl
test ax, -18054
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
