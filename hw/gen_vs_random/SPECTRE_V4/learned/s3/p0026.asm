.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, 32
cmovnbe rcx, rcx
test di, 35
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 6
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and dl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
test al, cl
cmovp ax, si
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 55
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
cmp al, 114
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, esi
cmovnbe eax, ebx
test ebx, -595096626
sub dl, dil
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 58
cmovb di, di
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp bl, al
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmovnbe rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs di, di
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
