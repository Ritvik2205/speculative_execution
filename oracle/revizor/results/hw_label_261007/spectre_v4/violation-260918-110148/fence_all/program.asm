.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rdx], 2 
lfence
cmovz edx, ecx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rdi], 119 
lfence
bts esi, 241 
lfence
or esi, 0b1000 # instrumentation
lfence
and sil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv esi 
lfence
add cl, 106 # instrumentation
lfence
cmovnp rdi, rsi 
lfence
dec rbx 
lfence
btc dx, 119 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnbe esi, dword ptr [r14 + rcx] 
lfence
not si 
lfence
sbb al, -101 
lfence
cmovnbe rcx, rcx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
bt word ptr [r14 + rsi], 5 
lfence
sbb al, 123 
lfence
cmovs rax, rdx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rcx], -12 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rcx, qword ptr [r14 + rsi] 
lfence
add dl, 12 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovle di, word ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 1 # instrumentation
lfence
add dl, 97 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rdx], 7 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rax] 
lfence
bt ebx, edi 
lfence
cmp al, 19 
lfence
and al, -36 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnz rdi, qword ptr [r14 + rsi] 
lfence
and sil, dl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdx], -20 
lfence
xor al, 102 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rdx], -69 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
xchg word ptr [r14 + rdx], bx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx edi, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns si, word ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnz ebx, dword ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rcx], esi 
lfence
and bl, al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div byte ptr [r14 + rbx] 
lfence
or rdx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rsi, rdx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
movsx rcx, word ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock neg qword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sbb eax, dword ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov si, word ptr [r14 + rdi] 
lfence
bswap edi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rsi], bl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rsi], eax 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], 26 
lfence
or dx, 0b1000 # instrumentation
lfence
and dl, 0b11111000 # instrumentation
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock neg word ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
