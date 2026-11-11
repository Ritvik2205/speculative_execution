.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and bl, dl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and bl, dl
or bl, cl
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
cmovp cx, bx
adc rdi, rdx
bswap rbx
adc al, cl
add bl, -72
cmovnle si, cx
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
or rdi, rax
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
add dl, al
sbb eax, -984782068
or bl, cl
movzx ecx, sil
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
mul rbx
cmovnl rax, rax
dec rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
or dl, 56
cmovnp ecx, ebx
xchg rcx, rdx
cmovnz eax, ebx
cmovb rdx, rdi
not cx
add al, al
cmovle edx, esi
add cl, cl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
test rcx, -2118888343
test ebx, -595096626
test eax, -818909344
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
cmp rax, 1524061352
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
