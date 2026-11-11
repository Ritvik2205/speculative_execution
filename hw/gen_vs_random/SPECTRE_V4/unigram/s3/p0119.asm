.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
sub cl, cl
imul rsi, rdx, 4
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and bl, dl
cmovb ecx, ecx
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
test dl, 19
xor dl, al
xchg esi, ebx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
test rax, -344032571
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test cx, ax
bswap rsi
and edi, 53
cmovl rsi, rdx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 31
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 79
inc rbx
dec al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
cmovnp rbx, rdx
sub bl, 17
cmovle rsi, rbx
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovnbe dx, cx
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
add dl, 41
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xchg esi, edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
add rsi, 62
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
btc si, ax
bts ebx, 22
or edi, ebx
bswap rcx
imul bx
cmovnp rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
