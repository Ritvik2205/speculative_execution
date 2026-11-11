.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 57
mul cl
imul cx, si, 97
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
or rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and al, -36
cmovo si, di
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg eax, esi
imul si, cx, 74
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add sil, dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
add rdi, -94
and bl, -63
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
cmovnle edx, eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
or si, dx
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
test edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmovb rdx, rsi
imul esi, edi
imul rcx, rdx
not cx
xor bl, sil
btc dx, 119
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
