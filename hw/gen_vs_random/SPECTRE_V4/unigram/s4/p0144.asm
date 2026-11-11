.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add bl, -72
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
cmovns si, di
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
add edi, 11
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
add dx, -90
add dx, -90
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
xor sil, 56
add bl, -109 # instrumentation
sbb esi, 58
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sub cl, -74
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edi, edx
cmovp eax, ebx
dec rcx
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmovnbe rdx, rdi
xor sil, 56
cmovnbe rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
sub bl, 17
test al, 66
test cl, -89
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 12
bt eax, 84
test dil, dil
add bl, -109 # instrumentation
sbb esi, 78
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
cmovnbe ax, bx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 27
and dil, 96
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
add al, 110 # instrumentation
movsx si, al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
mov dl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
