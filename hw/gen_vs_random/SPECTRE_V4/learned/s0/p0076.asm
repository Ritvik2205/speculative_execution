.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
test al, sil
cmp sil, 113
adc al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
sbb dl, al
sub ax, di
and al, 85
cmovz ebx, ecx
or al, 27
or dl, -26
dec al
test ecx, -907816607
adc cl, 111
cmp al, -53
dec dil
adc cl, dl
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 100
mov bl, sil
adc cl, al
cmp cl, 49
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
test al, 52
xor rcx, -111
cmp sil, bl
or eax, -1779536330
or rax, rcx
btc rdi, rbx
adc bl, cl
and al, dl
sbb cl, 127
inc bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
