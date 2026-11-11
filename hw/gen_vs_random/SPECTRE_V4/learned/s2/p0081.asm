.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 18
add al, -29
cmp rax, 1682181214
cmovz ebx, edx
and bl, -60
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
or bl, dil
and dl, 124
adc al, bl
adc dl, 48
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
bt dx, bx
or dl, sil
mov al, sil
dec al
xor sil, 80
test al, 27
and bl, dl
test dil, -58
adc cl, al
and al, dil
or eax, -646827727
add al, dl
and al, 75
and ax, -603
sbb bl, dil
xor dil, al
xor ax, 13332
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and ax, -4731
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
