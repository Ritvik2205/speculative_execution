.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, sil
test dil, -5
test eax, -651442446
or al, al
add dl, -8
cmp dl, sil
adc dl, al
xor al, dil
adc dil, cl
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
mov dl, al
and dl, cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
cmp bl, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
sub rax, -1066968986
and di, -34
and ax, 26513
or edi, -64
xor ax, 30500
mov al, bl
sub al, dl
adc dil, -17
sbb sil, -124
test sil, 1
xor ax, 20236
sbb bl, dl
adc cl, al
mov al, 125
add bl, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and al, dil
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
