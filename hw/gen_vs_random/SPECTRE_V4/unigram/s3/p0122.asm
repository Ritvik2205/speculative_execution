.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -36
add ecx, 29
add rdx, 100
cmovp eax, eax
add rcx, 66
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
add cl, -71 # instrumentation
adc cl, dil
not si
and dil, al
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 20
dec bl
test dl, 19
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
imul eax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 48
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
adc al, cl
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
adc si, 2
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 29
movzx cx, cl
add eax, ebx
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
movzx si, dl
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
movzx ecx, cx
mov edx, ecx
cmp cl, 89
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 24
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
mov rdi, rax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
adc rdx, 68
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
