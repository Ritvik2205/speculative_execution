.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movsx eax, dl
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
xor rsi, rbx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
cmp di, -8
add ebx, eax
and al, al
xchg esi, eax
cmovb cx, dx
cmovno rsi, rcx
adc edi, -83
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and bl, -60
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
xor al, dl
inc si
cmovnz bx, dx
xor eax, 167244411
btc ebx, ecx
sub dx, -12
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
xor bl, al
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
and cl, dl
sub sil, 71
neg rdi
or ax, -30990
mov dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
mov edx, -950755477
add rax, -1121139858
cmovnl esi, eax
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
sbb eax, 426996540
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
