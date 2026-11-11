.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
cmp rax, -227205962
not cx
adc rdi, rdx
cmovp cx, bx
add dl, al
add cl, cl
or bl, cl
cmovnp ecx, ebx
cmovnl rax, rax
test eax, 1561062795
cmovnz eax, ebx
test ebx, 1263899340
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
xchg rcx, rdx
sbb eax, -984782068
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
add bl, -72
bswap rbx
or rdi, rax
test rcx, -2118888343
adc al, cl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnle si, cx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
cmovle edx, esi
cmovb rdx, rdi
dec rdi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
mul rbx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dl, 56
or bl, cl
or eax, 2007177863
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and bl, dl
dec dl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
movzx ecx, sil
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
