.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add cl, 106 # instrumentation
cmovnp rdi, rsi
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
cmovs rax, rdx
not si
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmp al, -52
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
and al, -127
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
bts esi, 241
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and sil, dl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
sbb al, 32
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
dec rbx
cmovz edx, ecx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
bt ebx, edi
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
btc dx, 16
sbb al, 123
xor al, 102
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
bswap edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
