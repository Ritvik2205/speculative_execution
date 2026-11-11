.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo esi, eax
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 33
imul cx, ax
inc rbx
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 22
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
add esi, -5
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
sbb al, 32
dec rdx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
bts edx, edx
cmovnl rdx, rdx
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
cmovs rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
adc al, al
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
bt eax, ecx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add ecx, edx
cmp ebx, 78
sub rcx, 13
xchg rbx, rdi
bts edx, 85
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
adc dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
test ebx, 1263899340
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 37
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 91
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 72
or dil, 79
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
