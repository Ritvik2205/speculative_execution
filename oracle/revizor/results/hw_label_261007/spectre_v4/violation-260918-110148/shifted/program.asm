.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rdx], 2 
cmovz edx, ecx 
and rdi, 0b1111111111111 # instrumentation
lfence
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
not si 
sbb al, -101 
cmovnbe rcx, rcx 
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5 
sbb al, 123 
cmovs rax, rdx 
and rcx, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rcx], -12 
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi] 
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rdx], 7 
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rax] 
bt ebx, edi 
cmp al, 19 
and al, -36 
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi] 
and sil, dl 
and rdx, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdx], -20 
xor al, 102 
and rdx, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rdx], -69 
and rdx, 0b1111111111000 # instrumentation
lfence
xchg word ptr [r14 + rdx], bx 
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx] 
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx] 
and rcx, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rcx], esi 
and bl, al 
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
lfence
div byte ptr [r14 + rbx] 
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx 
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx] 
and rax, 0b1111111111000 # instrumentation
lfence
lock neg qword ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi] 
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi] 
bswap edi 
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl 
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rsi], eax 
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], 26 
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lfence
lock neg word ptr [r14 + rsi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
