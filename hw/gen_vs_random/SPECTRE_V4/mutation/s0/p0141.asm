.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add cl, cl
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
dec rdi
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnl rax, rax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
sbb eax, 1081973675
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
bswap rbx
add bl, -72
or bl, cl
or bl, cl
test ebx, -595096626
cmovnz eax, ebx
cmovp cx, bx
cmovb rdx, rdi
cmovnp ecx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
adc al, cl
add al, al
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and bl, dl
or rdi, rax
cmp rax, 2115020203
not cx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
dec dl
or dl, 56
movzx ecx, sil
mul rbx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
test eax, -544019457
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xchg rcx, rdx
and bl, dl
cmovle edx, esi
adc rdi, rdx
cmovnle si, cx
test rcx, -2118888343
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
