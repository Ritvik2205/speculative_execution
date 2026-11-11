.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
cmovp cx, bx
or eax, 2007177863
add dl, al
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
xchg rcx, rdx
or rdi, rax
or dl, 88
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
or bl, cl
dec rdi
bswap rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
mul rbx
add bl, -72
test ebx, -595096626
cmovnle si, cx
and bl, dl
cmovle edx, esi
cmovnl rax, rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnz eax, ebx
movzx ecx, sil
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
adc rdi, rdx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
or bl, cl
not cx
test eax, 1880179600
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
add cl, cl
cmovnp ecx, ebx
test rcx, -2118888343
cmp rax, -1102558854
sbb eax, 2051746726
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add al, al
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
adc al, cl
dec dl
cmovb rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
