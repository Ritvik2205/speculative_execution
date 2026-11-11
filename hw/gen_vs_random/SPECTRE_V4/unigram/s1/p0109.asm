.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
add cl, -37 # instrumentation
adc ebx, 5
cmovb edi, edi
add dl, -99 # instrumentation
not ecx
and cx, 17
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 12
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
add di, -74
test bl, dl
imul eax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 83
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmovl rcx, rdi
add dl, -114 # instrumentation
cmovl cx, ax
mul dl
and bx, 95
or di, cx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
imul si, dx
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
inc esi
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and di, 49
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
movzx rbx, si
bswap esi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
sub rax, -701741274
bts rsi, 73
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
mov dl, -34
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, cx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
sbb eax, 4
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
sub al, 119
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
add al, dl
cmovnb edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
