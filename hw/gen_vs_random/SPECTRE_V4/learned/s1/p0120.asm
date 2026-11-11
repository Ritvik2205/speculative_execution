.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
cmovno cx, si
cmp rcx, -121
test al, bl
xor dil, 37
adc sil, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
add cl, bl
and bl, dl
test bl, 110
cmp eax, -813838876
test al, cl
test dl, -125
bt dx, ax
sbb al, 31
sbb bl, -75
or eax, 1470564945
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and edi, -102
test ax, -14473
mov dl, al
add cl, sil
cmp al, sil
cmp dil, -92
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 4
xor ax, 30500
add eax, 1017938146
cmp sil, dl
sbb dl, 75
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
sbb cl, 45
sub dl, cl
add al, -55
add al, 40
sbb bl, dil
sbb al, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
