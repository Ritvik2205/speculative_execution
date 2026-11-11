.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdi, rdx
cmovnz eax, ebx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovle edx, esi
cmp rax, -120490246
sbb eax, 4
cmovb rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
or bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
test ebx, -595096626
and bl, dl
dec rdi
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
cmovnp ecx, ebx
add dl, al
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
test eax, 1561062795
xchg rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
cmovnl rax, rax
or rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
cmovp cx, bx
or dl, 88
add bl, -72
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and bl, dl
add al, al
bswap rbx
not cx
or bl, cl
test rcx, -2118888343
or eax, -1434249782
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
mul rbx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
add cl, cl
cmovnle si, cx
dec dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
