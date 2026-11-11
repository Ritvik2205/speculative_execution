.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15409
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
xor al, dl
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
cmovo rcx, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
cmp dx, bx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, eax
xchg edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovnbe rcx, rax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
xchg bl, dl
add bx, 110
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc cl, sil
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
