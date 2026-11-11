.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, 25163
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, -224991767
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
not di
and al, 82
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
btr bx, cx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
bswap ebx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
sub cl, 18
cmovs edx, eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and dl, -104
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
add dl, 29 # instrumentation
cmovnl rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
