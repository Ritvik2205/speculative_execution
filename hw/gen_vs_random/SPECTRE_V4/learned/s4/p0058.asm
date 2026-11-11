.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 18
or dl, -26
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
add bl, -38
and ax, 13045
sub al, sil
cmp al, dil
add al, -6
mov dl, cl
movsx di, dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and bl, -119
mov dl, cl
xor bl, dl
cmp al, -78
cmp dil, dl
xor al, 23
cmp al, sil
cmp dl, bl
cmp al, 109
cmp rax, -1070057082
xor dl, -123
or sil, sil
and dl, bl
test dl, 114
cmp al, -122
sub cl, 18
and sil, -84
add al, -44
xor dl, cl
sbb al, -3
cmp al, -122
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
