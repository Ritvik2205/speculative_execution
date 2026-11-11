.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
add al, al
add cl, cl
cmovb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
or rdi, rax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xchg rcx, rdx
cmovle edx, esi
cmovnle si, cx
add dl, al
add bl, -72
adc rdi, rdx
cmovnl rax, rax
and bl, dl
and bl, dl
test ebx, -595096626
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
dec rdi
mul rbx
not cx
test rcx, -2118888343
or dl, 56
cmovnp ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
cmp rax, -227205962
movzx ecx, sil
adc al, cl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
test eax, 1880179600
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
sbb eax, 1081973675
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
or bl, cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmovp cx, bx
cmovnz eax, ebx
bswap rbx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
or bl, cl
dec dl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
