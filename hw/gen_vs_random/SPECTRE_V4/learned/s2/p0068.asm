.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
xor sil, sil
cmp dl, cl
mov cl, al
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and bl, 76
add dil, -84
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
test al, 27
cmp rax, 1097504565
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmp cl, 49
adc eax, 948001339
xor cl, al
test bl, cl
and ax, 4
and bl, -60
adc dil, al
mov bl, sil
cmp sil, 127
jmp .bb_0.1
.bb_0.1:
sbb ax, 75
adc dil, -17
adc dil, dl
or si, 85
cmp dl, cl
adc eax, -1127383570
xor ax, 13332
cmp bx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
