.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
test ebx, -595096626
adc al, cl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
not cx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
movzx ecx, sil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
test eax, -558243208
mul rbx
or eax, -1434249782
bswap rbx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnz eax, ebx
test rcx, -2118888343
cmovle edx, esi
add dl, al
xchg rcx, rdx
or bl, cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
or rdi, rax
add al, al
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
dec rdi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
dec dl
cmovb rdx, rdi
cmovnle si, cx
add cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmp rax, 2115020203
or bl, cl
cmovnl rax, rax
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and bl, dl
cmovp cx, bx
cmovnp ecx, ebx
or dl, 88
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
adc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and bl, dl
add bl, -72
sbb eax, 2051746726
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
