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
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
and cl, -109 # instrumentation
not rdi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 14
cmovs ebx, edi
movzx cx, bl
test bl, dil
bt eax, 84
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmp al, -23
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
dec dl
or dl, bl
or edi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 47
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
not rdi
add sil, 110 # instrumentation
movsx ax, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
sub esi, 93
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
btc rsi, 140
xchg dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
sub dl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
inc dx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
