.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 64
or di, 0b1000000000000000 # instrumentation
bsf si, di
cmovnp di, si
cmp dil, dil
xor bx, si
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 19
bts di, 97
btc bx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
cmovp ebx, eax
or al, 109
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
cmp cl, 79
and al, dil
cmovns eax, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and sil, dl
or cl, cl
sbb bl, bl
test rcx, -2118888343
cmovnb ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
cmovnbe rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
btc cx, si
cmovnb ax, ax
movzx eax, dl
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
add ebx, esi
add dl, bl
cmovnl rbx, rcx
add dl, -94 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
add al, 118
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
sbb al, 123
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 58
sub dil, dil
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
sbb eax, -1688332460
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
