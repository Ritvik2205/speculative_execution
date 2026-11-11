.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, 114
xor esi, edi
or bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
sub si, dx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
or bl, 92
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
add cl, 106 # instrumentation
cmovnp rdx, rcx
cmovns bx, bx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
cmp rax, 1524061352
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 8
movzx si, sil
xchg rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
or dil, sil
and cl, dil
cmp sil, sil
xor cl, bl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
add rdi, -94
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
dec al
sbb al, -101
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
bts esi, 241
and rdx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
test dl, bl
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
mov rax, rcx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test ax, di
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
adc al, sil
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
