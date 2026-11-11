.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
xor si, -73
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test al, -38
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
xor sil, bl
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
dec dl
add cl, bl
mov sil, 90
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 53
add cl, -62
sbb dl, -62
sub cl, -119
sbb eax, 426996540
mov bl, sil
sub al, 0
cmp bl, sil
cmp sil, dil
or dl, cl
mov dl, al
add dil, sil
mov dil, cl
test bl, -116
sbb ax, 1843
sub dl, 107
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
sbb dl, bl
add al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
