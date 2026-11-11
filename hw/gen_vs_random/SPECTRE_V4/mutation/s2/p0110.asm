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
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
add bl, -72
cmovnle si, cx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovle edx, esi
xchg rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add al, al
test ebx, -595096626
or dl, 88
adc rdi, rdx
not cx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and bl, dl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
dec rdi
test eax, 1880179600
cmovnp ecx, ebx
cmovp cx, bx
cmp rax, -120490246
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
add dl, al
mul rbx
or bl, cl
bswap rbx
cmovnz eax, ebx
or rdi, rax
test rcx, -2118888343
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
dec dl
movzx ecx, sil
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
adc al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
or bl, cl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
sbb eax, 1081973675
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
cmovnl rax, rax
cmovb rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
or eax, -1434249782
add cl, cl
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
