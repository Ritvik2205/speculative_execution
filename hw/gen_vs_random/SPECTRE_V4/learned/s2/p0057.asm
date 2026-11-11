.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -62
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovl rcx, rsi
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
bts rdi, rbx
cmovz edx, ecx
btr si, bx
add di, -74
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], bx
and rdi, -2
and bl, 26
cmovnb rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovno rax, rdi
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
test al, 80
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
btc si, dx
btc ebx, 94
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
sbb dl, -99
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test al, sil
test edi, -1249897727
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb eax, 2051746726
xor dl, dl
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
