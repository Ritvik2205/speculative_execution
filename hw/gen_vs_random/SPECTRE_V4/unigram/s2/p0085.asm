.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, sil
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 22
and rsi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
adc si, -74
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
cmovns si, dx
xor rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
cmp ax, -22704
or al, -90
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
or bl, -99
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
adc cl, al
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
movzx di, sil
cmovs esi, ebx
movsx edx, cl
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 24
sub al, bl
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
add bl, -43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
add ecx, 99
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and dl, 24
add bl, -84 # instrumentation
cmovb dx, si
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
