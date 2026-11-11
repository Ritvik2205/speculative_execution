.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, cl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 13
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
btc si, ax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
add bl, 110 # instrumentation
movsx di, bl
sub cl, sil
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add al, -26 # instrumentation
btr eax, 98
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
not bx
bt edi, ecx
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
dec si
cmovnbe ax, cx
add si, si
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 79
bt ebx, ecx
cmovnb ebx, esi
bts eax, 209
sbb dil, 37
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
neg cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 87
bt edi, 25
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 14
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 86
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
add cx, 11
or bl, 40
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
cmovo edi, eax
or bx, ax
add sil, -71 # instrumentation
adc sil, cl
sbb eax, -1688332460
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
