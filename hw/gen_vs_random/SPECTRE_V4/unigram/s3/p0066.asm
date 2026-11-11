.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
add ax, 17333
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and bl, bl
cmovns bx, si
sbb dx, 2
and eax, -1145483375
cmovz esi, esi
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
btc rbx, 52
sub esi, eax
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
test dl, -125
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
sbb sil, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
adc esi, 88
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
cmovs edx, esi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
adc edi, -83
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
test ecx, eax
cmovnb esi, ebx
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
movsx bx, al
sbb dl, bl
mul cx
sub dil, cl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
xchg si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 86
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
cmp dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and bx, dx
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
