.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rbx
cmovb rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
dec rdi
add cl, cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
cmovnle si, cx
adc al, cl
add dl, al
or bl, cl
or dl, 56
xchg rcx, rdx
bswap rbx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and bl, dl
add al, al
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add bl, -72
adc rdi, rdx
sbb eax, 2051746726
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
test ebx, 1263899340
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
or rdi, rax
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
cmovp cx, bx
cmovle edx, esi
cmovnl rax, rax
not cx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovnz eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
cmp rax, 1524061352
dec dl
movzx ecx, sil
or bl, cl
test rcx, -2118888343
test eax, 1561062795
cmovnp ecx, ebx
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
