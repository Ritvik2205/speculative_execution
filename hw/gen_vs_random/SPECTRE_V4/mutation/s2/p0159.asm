.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 241
add cl, 106 # instrumentation
cmovnp rdi, rsi
and bl, al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
cmovs rax, rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
cmp al, 81
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
bswap edi
btc dx, 119
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
sbb al, 123
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor al, 56
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
bt ebx, edi
not si
cmovz edx, ecx
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
dec rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
cmovnbe rcx, rcx
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
sbb al, -101
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and al, -127
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
