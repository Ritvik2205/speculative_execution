.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
test dl, -102
sbb bl, -79
neg rdi
or dl, cl
mov bl, cl
and cl, bl
sbb dl, dil
and bl, sil
sub dil, 35
xor al, -15
xor al, 118
cmp al, dl
add sil, dil
xor ax, -17712
mov al, 125
sub rax, -1881584175
cmp ax, -22704
sub al, 26
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
sbb cl, sil
and cl, dl
xchg ebx, edi
sbb cl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
