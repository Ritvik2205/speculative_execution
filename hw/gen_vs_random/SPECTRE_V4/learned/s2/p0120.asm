.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 18
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
sbb al, 102
xchg esi, ecx
test dl, dil
or cl, -55
and al, 75
xor di, dx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 98
sbb cl, 127
or al, sil
cmp cl, -80
and al, -87
sbb al, -14
add cl, sil
cmp bl, al
xor ax, -17712
or dl, cl
and cl, dl
cmp bx, 113
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
adc ecx, 114
cmp al, -122
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
sbb al, 31
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and bl, -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
