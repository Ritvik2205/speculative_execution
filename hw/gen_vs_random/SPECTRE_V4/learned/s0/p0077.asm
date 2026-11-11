.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
xchg dx, di
adc esi, 90
bts ebx, 22
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
sub dl, 43
lea ax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 20
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 19
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
xor eax, 181978569
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
imul rbx
or cl, al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and al, -56 # instrumentation
cmovl rdx, rbx
not di
test bx, bx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and al, -127
cmovnb ax, ax
and bl, dl
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 75
cmovnz eax, edx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
