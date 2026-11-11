.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 27
cmovz edi, ecx
adc cl, 31
test al, 18
sub bl, dl
test dl, -81
dec al
add sil, cl
xor ax, 13332
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
neg rax
adc cl, dl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp sil, -100
sub bl, dl
cmovnz rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
sbb di, -105
adc bl, 0
and dl, cl
or rax, -823069511
sbb al, 66
cmp rax, -1247892360
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmp ax, -18179
add dil, cl
cmp edx, -95
cmp dil, 53
or dil, -104
sub dl, -16
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
