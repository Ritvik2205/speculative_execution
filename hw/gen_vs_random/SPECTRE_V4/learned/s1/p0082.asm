.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, 1802312508
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
adc rdi, rdx
cmovnle si, cx
test eax, 1880179600
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
or dl, 56
dec dl
or bl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
bswap rbx
or rdi, rax
cmovnl rax, rax
movzx ecx, sil
cmovnbe rax, rcx
cmovnbe rax, rdx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
xchg rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnz eax, ebx
test rcx, -2118888343
bt edi, ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
bts ecx, edi
and rdi, -2
cmovnp rbx, rdx
test ebx, -595096626
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
