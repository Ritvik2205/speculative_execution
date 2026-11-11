.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 74
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 42
test ecx, 24
add cl, -82 # instrumentation
sbb ax, si
and dl, 84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
bswap rbx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
test rax, -344032571
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
cmovnbe rax, rcx
cmp ax, -906
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 27
imul rdi, rsi, 57
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
cmovnle rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xchg bl, dil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
xor sil, 56
add rdi, rsi
mul edx
sub dl, dl
sub eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
