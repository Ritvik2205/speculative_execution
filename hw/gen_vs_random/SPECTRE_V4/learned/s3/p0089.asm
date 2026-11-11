.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
adc sil, -31
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and ax, -23308
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
inc edx
mov al, sil
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
cmp sil, cl
test eax, -31785616
and al, 92
sub bl, al
cmp dl, bl
xor cl, 13
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
cmovnbe rcx, rax
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 49
sbb bl, -79
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and dil, -120
or ax, 27604
adc cl, -85
xchg sil, dil
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
and ax, 25163
mov dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
