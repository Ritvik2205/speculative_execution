.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, sil
cmovb dx, ax
xor dil, -23
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 89
sub si, ax
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
inc sil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 33
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
test bl, dl
mul dl
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
xchg al, dil
btc rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
add al, -67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmp sil, dl
and al, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 22
cmovnz rsi, rcx
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
or rsi, rax
neg rdx
cmovb rsi, rcx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 36
btr ecx, 82
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
bts rsi, 236
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and esi, 61
test ax, 2960
test al, -24
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 95
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
