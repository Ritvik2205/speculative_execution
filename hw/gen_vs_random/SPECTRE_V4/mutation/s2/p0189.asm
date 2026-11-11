.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
dec dl
or bl, cl
or dl, 88
bswap rbx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
add cl, cl
add dl, al
or rdi, rax
adc al, cl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
not cx
dec rdi
cmp rax, -227205962
cmovnl rax, rax
and bl, dl
mul rbx
adc rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
or bl, cl
add al, al
movzx ecx, sil
cmovp cx, bx
xchg rcx, rdx
or eax, 2007177863
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmovnz eax, ebx
cmovle edx, esi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
sbb eax, 4
test eax, 1561062795
and bl, dl
test rcx, -2118888343
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovnp ecx, ebx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add bl, -72
cmovb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
test ebx, -595096626
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
cmovnle si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
