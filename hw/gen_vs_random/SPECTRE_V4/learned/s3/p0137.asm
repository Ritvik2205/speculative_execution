.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -197
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
dec al
and ax, -23308
or al, -83
dec dl
bts eax, 58
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
neg dl
mov bl, dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test dil, -83
sbb ax, 10407
or sil, al
sbb eax, 426996540
add bl, dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
dec al
cmp al, -122
or rdx, 1
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
cmp sil, al
adc sil, al
cmp sil, cl
add dil, 75
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
adc bl, 35
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
add dil, sil
or al, bl
mov al, dl
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
sbb ax, 7207
cmp dl, dil
and ax, 13045
cmp al, dil
xor bl, 126
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
