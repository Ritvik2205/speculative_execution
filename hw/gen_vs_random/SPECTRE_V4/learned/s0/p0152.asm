.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
test al, -38
sub cl, al
sub bl, -98
xchg dl, dl
and al, 49
adc bl, 97
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add al, 40
cmp ebx, 80
test dl, 24
sub rbx, 101
sub dil, -28
movsx si, dil
test ecx, -1293796332
or sil, sil
sub al, 29
and cl, 32
add al, dil
sub cl, bl
and dl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
test dl, 24
sbb sil, cl
neg dil
sbb dl, dil
cmp bx, 113
adc dil, -15
adc cl, -86
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sub dil, -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
