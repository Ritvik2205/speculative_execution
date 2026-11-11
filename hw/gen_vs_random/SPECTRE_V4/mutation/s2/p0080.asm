.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -72
dec rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
not cx
add cl, cl
cmovb rdx, rdi
mul rbx
test eax, 1880179600
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xchg rcx, rdx
cmovnp ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
bswap rbx
cmovle edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
cmovp cx, bx
cmp rax, 2115020203
movzx ecx, sil
or dl, 88
or bl, cl
adc rdi, rdx
test ebx, 1263899340
cmovnz eax, ebx
and bl, dl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and bl, dl
test rcx, -2118888343
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
add al, al
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
sbb eax, 4
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
or bl, cl
cmovnl rax, rax
dec dl
or rdi, rax
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
cmovnle si, cx
or eax, 1802312508
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
