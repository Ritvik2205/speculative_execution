.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 1185843233
add al, 32 # instrumentation
adc rax, -324435035
not di
bswap rax
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
bswap rdi
btc rax, 124
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
imul si, di, -97
sbb dl, 53
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
sub al, dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
adc dil, -48
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
btr rbx, 69
add cl, -106 # instrumentation
cmovno rdi, rsi
adc ebx, -5
imul ax, si
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
sub edi, 41
adc rbx, rsi
cmovnl bx, di
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
test bx, 24072
cmp dl, 83
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
mov al, al
test dil, dl
test si, 7
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 69
neg rbx
and al, -1
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmp edx, 4
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 82
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
not dil
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
