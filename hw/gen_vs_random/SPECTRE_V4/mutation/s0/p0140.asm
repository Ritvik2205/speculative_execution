.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, bx
cmovnle si, cx
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and bl, dl
or bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
not cx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
dec rdi
xchg rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
add dl, al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
dec dl
test rcx, -2118888343
test ebx, -595096626
cmovb rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
add al, al
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmovnl rax, rax
or eax, 2007177863
or rdi, rax
cmovle edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
adc rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnp ecx, ebx
mul rbx
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
add bl, -72
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
cmovnz eax, ebx
movzx ecx, sil
test eax, -544019457
adc al, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bswap rbx
or bl, cl
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
add cl, cl
sbb eax, 1081973675
or dl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
