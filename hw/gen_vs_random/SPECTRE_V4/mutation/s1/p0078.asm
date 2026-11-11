.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
or dl, 56
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and bl, dl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
or bl, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
mul rbx
cmp rax, 2115020203
adc al, cl
add dl, al
add bl, -72
add al, al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
dec rdi
not cx
sbb eax, 4
test rcx, -2118888343
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and bl, dl
adc rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
cmovle edx, esi
bswap rbx
or rdi, rax
test eax, -558243208
test ebx, -595096626
cmovnz eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovp cx, bx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
dec dl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
movzx ecx, sil
cmovnle si, cx
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnp ecx, ebx
or eax, 2007177863
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
cmovb rdx, rdi
cmovnl rax, rax
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
add cl, cl
xchg rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
