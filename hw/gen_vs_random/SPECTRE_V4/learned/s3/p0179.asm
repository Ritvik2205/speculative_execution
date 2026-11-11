.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 87
or sil, al
adc dil, bl
sub dil, 65
sub al, 96
cmp bl, -16
cmp al, sil
adc bl, dl
cmp al, 105
sbb al, dil
and dil, dil
sub cl, dl
xor ax, 13332
mov dl, 81
or dil, sil
xor bl, dl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
test al, dil
sub al, -84
dec dil
xchg esi, eax
sbb di, -105
xor al, dil
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add dl, -82
test al, -24
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
