.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
sub ax, bx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, dil
xor al, al
bts rbx, 18
cmp sil, 88
test dl, dl
cmovs ebx, eax
adc rbx, 47
sub ebx, edx
bt rcx, 47
sbb cl, cl
movsx rsi, bl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 27
mul rbx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
cmovnl si, ax
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
cmovz rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
add eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
cmp dx, si
cmovnp ecx, edx
and bl, dil
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
bt esi, 227
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
add al, 118
test bl, 24
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
add bl, sil
cmovnbe si, di
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs di, di
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
cmovl rdi, rcx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
