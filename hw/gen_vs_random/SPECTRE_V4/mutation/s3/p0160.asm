.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -120490246
or bl, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
sbb eax, 2051746726
or eax, -1434249782
add al, al
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add cl, cl
test rcx, -2118888343
xchg rcx, rdx
cmovnl rax, rax
cmovle edx, esi
cmovp cx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
test ebx, -595096626
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
movzx ecx, sil
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
adc rdi, rdx
or bl, cl
bswap rbx
dec dl
add bl, -72
not cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
adc al, cl
cmovnz eax, ebx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
test eax, -818909344
or dl, 88
dec rdi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and bl, dl
cmovnle si, cx
add dl, al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
or rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and bl, dl
cmovnp ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
