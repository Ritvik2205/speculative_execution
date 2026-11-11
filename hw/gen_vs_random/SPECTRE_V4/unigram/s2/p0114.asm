.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 54
xor edx, 17
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
add al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
cmp eax, -1538116527
btc rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 93
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
cmovl rdi, rsi
cmovnb cx, ax
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rcx
neg rax
adc bl, 127
sub bl, al
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 9
xor bx, bx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
or cl, cl
or dil, 5
and rax, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rax]
imul dl
not dil
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
cmovnz rdx, rdi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 66
xchg dl, dl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
neg ebx
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
bswap edi
sub rax, 1914398062
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 48
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
adc al, bl
and al, cl
xchg cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
