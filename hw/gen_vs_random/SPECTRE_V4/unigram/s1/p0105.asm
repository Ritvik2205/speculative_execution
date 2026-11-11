.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 96
xor al, 56
test ebx, 1263899340
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
dec esi
test al, sil
and rax, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 97
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
xor dil, 55
and rdx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
add cl, -117 # instrumentation
cmovs rsi, rcx
not cx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
add eax, -1796699558
add dl, sil
mov rdx, 76
add dx, dx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sub dl, dl
bt edx, 93
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub al, bl
sbb dil, dil
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
add bl, -72
cmp ecx, 57
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
btc cx, 240
imul ax, di, 35
sub eax, edi
cmovle ebx, edx
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], bx
and bl, -63
or esi, 25
cmovl rdx, rax
cmp sil, 88
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
inc dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
