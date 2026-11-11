.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 31
imul bx, cx, 3
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
test al, al
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
cmovz edx, esi
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 54
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
adc cl, sil
btc rdx, rax
sbb eax, 1081973675
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
xor al, sil
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
add al, al
sub cl, 116
sbb sil, sil
bswap esi
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
test dil, dl
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
cmovnl rsi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 80
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp al, -52
add rax, rcx
test cl, -89
add al, al
add eax, -1796699558
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovnle rax, rax
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 23
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 83
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovle eax, ebx
cmovs eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
