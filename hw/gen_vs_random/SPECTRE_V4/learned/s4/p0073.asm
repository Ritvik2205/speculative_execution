.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
test ecx, -304234347
xor sil, dl
and edx, 99
test bl, -16
cmp di, -8
xor ax, 13329
mov dl, al
sbb ebx, -54
mov dl, bl
xchg rax, rsi
bts si, 8
or eax, -863161215
or dl, sil
and al, 92
adc cl, al
adc cl, 31
sub al, 86
adc al, -70
sbb al, 66
sbb sil, 24
xor bl, 126
or dl, al
mov cl, -38
sbb cl, 12
and dl, -11
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
sbb cl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
