.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
xor dx, 7
or al, dil
test cl, dl
test al, 52
and esi, 126
cmp dil, 101
test eax, -251558852
add al, -99
sub dl, 107
and al, 100
adc al, 41
and bl, sil
or sil, bl
cmp al, dil
cmp cl, al
sbb ax, 18812
cmp dl, cl
xor cl, 13
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb rcx, -73
and cl, -101
mov dl, sil
sub dl, 107
sub cl, sil
sub al, 96
mov al, bl
mov cl, dl
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
