.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
adc al, cl
dec dl
cmp rax, -227205962
cmovle edx, esi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnz eax, ebx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
add cl, cl
cmovnl rax, rax
sbb eax, 2051746726
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
mul rbx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
or rdi, rax
or eax, 2007177863
cmovp cx, bx
dec rdi
or bl, cl
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
add dl, al
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
or dl, 56
cmovnle si, cx
test eax, -818909344
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and bl, dl
cmovnp ecx, ebx
test rcx, -2118888343
adc rdi, rdx
add bl, -72
or bl, cl
bswap rbx
cmovb rdx, rdi
test ebx, 1263899340
not cx
xchg rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
