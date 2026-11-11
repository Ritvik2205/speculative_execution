.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rsi
test dil, 64
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and bl, 76
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
mov bl, cl
xchg cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
sub rax, 2016976449
movzx eax, bl
add bl, 69 # instrumentation
cmovnbe dx, ax
cmp ax, -18179
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 54
cmp edi, esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
movzx bx, al
btc ax, cx
bt rbx, rdi
cmovl dx, ax
cmovnz bx, cx
cmovs esi, ecx
cmovz edi, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
sub dl, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
test ebx, 90
xchg dx, di
bswap ebx
and rax, 1072797615
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
btr si, ax
sub cl, -94
imul rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 30
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
test bx, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
