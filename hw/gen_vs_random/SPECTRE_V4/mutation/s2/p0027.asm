.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, -558243208
xchg rcx, rdx
or eax, 1802312508
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
cmovle edx, esi
dec rdi
cmovnz eax, ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
adc rdi, rdx
add al, al
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
mul rbx
test ebx, 1263899340
cmp rax, 2115020203
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovp cx, bx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
dec dl
or dl, 88
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add cl, cl
sbb eax, -984782068
or bl, cl
cmovnl rax, rax
movzx ecx, sil
bswap rbx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and bl, dl
add bl, -72
not cx
adc al, cl
cmovnle si, cx
test rcx, -2118888343
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
or rdi, rax
or bl, cl
add dl, al
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnp ecx, ebx
cmovb rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
