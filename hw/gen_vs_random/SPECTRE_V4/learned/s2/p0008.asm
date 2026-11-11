.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, 2007177863
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 29
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
add al, dl
test eax, 1880179600
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
or dl, 56
dec dl
or bl, al
xor al, 102
and al, -127
bswap rbx
or rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
add si, 4
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
cmovnbe rax, rbx
and bl, cl
xor cl, -54
neg ebx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, ebx
test rcx, -2118888343
adc al, dil
test eax, 1880179600
and sil, -49
not dl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 5
neg rsi
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
add rdi, rax
sub rdx, 22
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
cmp rax, -1102558854
movzx edx, al
add eax, -1796699558
bt ebx, 228
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
