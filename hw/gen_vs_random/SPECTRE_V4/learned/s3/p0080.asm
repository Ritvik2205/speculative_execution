.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, al
xor al, dl
sub bl, 56
or dil, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
add cl, -62
or esi, 32
bts ax, 155
sbb sil, -11
test al, dil
sbb sil, dil
sbb dil, 31
xor rcx, -111
and sil, -84
sbb bl, -79
xor ax, -29507
xor dl, al
adc dil, 109
cmp al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
