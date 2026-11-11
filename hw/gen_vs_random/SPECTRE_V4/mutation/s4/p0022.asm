.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
sbb al, 123
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
add cl, 106 # instrumentation
cmovnp rdi, rsi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and sil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
btc dx, 119
cmp al, 81
cmovnbe rcx, rcx
and bl, al
dec rbx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
cmovs rax, rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
xor al, 56
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
not si
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sbb al, 123
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
cmovz edx, ecx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and al, -127
bt ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
