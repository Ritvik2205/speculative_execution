.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 65
cmovz edx, esi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rbx
or eax, -1434249782
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
xor bx, di
btc cx, 240
or dl, 1 # instrumentation
add cl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
mov bl, cl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
xor al, 29
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
bts esi, 241
or si, 25
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
xor bl, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovnz edi, edx
adc al, al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
sbb di, -76
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 72
movzx rdx, di
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
sbb al, cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
test al, 80
cmovb edx, eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 45
xor bl, dil
cmp al, al
btc dx, 16
add cl, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
movzx edx, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
cmp bl, dil
cmovs rbx, rsi
lea ebx, qword ptr [rdx + rax + 15]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
