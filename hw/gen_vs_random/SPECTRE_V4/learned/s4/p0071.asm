.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -119
sub si, bx
sbb al, 43
test al, 57
xor dx, 7
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
cmovbe cx, ax
adc eax, -983562873
sbb sil, -11
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
imul si, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
cmovnp dx, cx
and bl, -60
add al, sil
cmp cl, 49
test cx, 7280
adc eax, 917540672
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 18
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
or dil, sil
xor cl, 13
sub cl, -127
cmp bl, -16
add al, dl
sub dl, -16
and ax, 25163
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
