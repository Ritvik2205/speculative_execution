.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and esi, 55
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
test dl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
cmp rbx, 89
imul di, ax
cmovs rcx, rdi
xchg rsi, rax
sub rax, -701741274
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 54
cmovnb dx, dx
cmovnle si, cx
sub cl, -74
xor cl, -85
and dil, bl
sub bl, bl
cmovle rbx, rsi
test al, cl
xor cl, al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
cmovs cx, bx
adc al, dil
cmovnbe rax, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and al, -36
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
cmovnl rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 74
btc di, dx
imul bx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
sub rbx, rsi
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
neg si
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 41
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rbx]
cmovz edi, ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
