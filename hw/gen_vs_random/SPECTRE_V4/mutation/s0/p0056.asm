.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
adc rdi, rdx
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
dec dl
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
or rdi, rax
add cl, cl
cmovnp ecx, ebx
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
dec rdi
add bl, -72
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
cmovnle si, cx
cmovp cx, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
xchg rcx, rdx
test ebx, -595096626
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
add al, al
sbb eax, 2051746726
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
movzx ecx, sil
cmovb rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
test rcx, -2118888343
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
bswap rbx
or eax, 1802312508
not cx
adc al, cl
or bl, cl
or dl, 88
cmovle edx, esi
add dl, al
cmovnl rax, rax
cmp rax, -1102558854
test eax, -558243208
mul rbx
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, ebx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
