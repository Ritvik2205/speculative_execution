.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
or eax, 2007177863
cmovb rdx, rdi
add cl, cl
adc al, cl
dec rdi
add al, al
mul rbx
cmovp cx, bx
cmovnz eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
cmp rax, -1102558854
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
cmovle edx, esi
sbb eax, 1081973675
or bl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and bl, dl
bswap rbx
test rcx, -2118888343
cmovnl rax, rax
add bl, -72
dec dl
xchg rcx, rdx
test ebx, -595096626
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
or bl, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add dl, al
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
or rdi, rax
or dl, 56
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovnp ecx, ebx
not cx
adc rdi, rdx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmovnle si, cx
movzx ecx, sil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and bl, dl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
test eax, -818909344
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
