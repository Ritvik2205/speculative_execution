.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rax], eax
sub dil, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
cmp dil, 101
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
cmovs cx, di
adc edx, -86
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
or cx, 23
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
xor dil, -23
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 56
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 10
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
mul ax
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
neg si
btr ebx, 116
test dl, al
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
bswap esi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
add al, 54 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovnz ecx, ebx
and cl, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 21
cmovno edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
or sil, -47
sub rbx, 101
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
dec dx
sub rax, 120
and rsi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
