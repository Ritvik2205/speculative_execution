.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 106
xor dl, -123
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
or al, -19
xor bl, dil
or dl, cl
add al, -4
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
cmp bl, sil
cmp al, -122
or cx, 59
or rax, -2144083737
cmp cl, sil
add dl, -82
bts ebx, 189
sbb al, 95
xor dl, dl
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
or bl, -35
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
sub bl, cl
xor al, cl
adc al, -86
test dil, -26
cmp cl, 107
and dl, dil
xor ax, -22861
or bl, 80
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
