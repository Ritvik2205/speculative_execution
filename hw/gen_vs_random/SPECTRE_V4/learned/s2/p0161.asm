.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and ax, 16313
btc rsi, rcx
and bl, -60
and sil, cl
or bl, sil
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and eax, -1237519395
xor dl, al
xor rsi, -102
bt ebx, ecx
or cl, 83
sub dl, al
cmovno si, ax
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and sil, -84
test bl, al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and al, dl
test ecx, -907816607
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
xor dil, al
adc cl, 31
and ebx, -4
sbb sil, 24
cmp dx, -26
sbb dl, -106
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
