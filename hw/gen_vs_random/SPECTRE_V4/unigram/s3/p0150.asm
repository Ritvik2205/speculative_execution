.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
imul rsi
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
sbb al, sil
or edx, -127
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
test edi, -1249897727
mov rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
cmovb esi, ecx
or al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
test di, ax
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
xchg rax, rsi
add cl, al
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
sbb rax, 183833426
cmovnbe rbx, rax
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 97
xor ax, cx
mul edx
or edx, -127
and al, bl
bt edx, 58
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 26
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
xor bx, 12
cmovnb rcx, rdx
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
cmovp di, dx
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 100
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
sbb di, dx
test edx, 573099753
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
adc sil, sil
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmovnl rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
