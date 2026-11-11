.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add di, -74
cmovnp bx, si
add bx, 110
btc rax, 58
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 25
movzx rax, di
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
add rbx, 52
and sil, dl
xor bl, 93
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 47
and bl, al
or dl, sil
sub dil, -10
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
cmovnp bx, bx
or esi, 3
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
cmovle dx, dx
test di, 71
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rdx, 59
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
imul cl
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
or edi, 44
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sub rdi, 63
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
xchg rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 88
or sil, sil
test esi, 6
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ebx
add ecx, 12
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
add bl, 65 # instrumentation
cmovnp dx, ax
cmp sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
