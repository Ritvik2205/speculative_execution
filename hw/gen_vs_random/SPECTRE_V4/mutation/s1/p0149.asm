.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
and bl, dl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add dl, al
cmovle edx, esi
xchg rcx, rdx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
or bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovb rdx, rdi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
bswap rbx
cmovnp ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
dec rdi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnl rax, rax
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
adc rdi, rdx
cmovp cx, bx
or dl, 88
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
dec dl
test eax, -818909344
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
add bl, -72
not cx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
movzx ecx, sil
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
test ebx, 1263899340
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
or bl, cl
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add cl, cl
cmp rax, -227205962
cmovnle si, cx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
or rdi, rax
mul rbx
test rcx, -2118888343
adc al, cl
cmovnz eax, ebx
sbb eax, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
