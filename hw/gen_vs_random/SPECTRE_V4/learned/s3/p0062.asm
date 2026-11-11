.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
cmp sil, 113
and dil, bl
mov al, dl
and dl, -53
dec dl
add al, dl
sub al, cl
movzx ax, sil
sub bl, cl
xchg rax, rcx
btc edi, 125
sub dx, -12
sbb dil, bl
not sil
xchg ebx, ecx
btc rdi, rax
cmp al, -78
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc cl, dl
or bl, -86
and dil, al
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
add cl, dl
or dl, cl
or dl, bl
cmp rcx, -121
sbb dl, al
test bl, -29
cmovnz eax, ecx
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
