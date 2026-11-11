.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovnbe rdi, rcx
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 77
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
not dil
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
cmovs rsi, rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
add al, -71 # instrumentation
adc al, sil
cmovnle esi, ecx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 25
imul cl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 76
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 5
add cl, cl
and rdx, 88
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 65
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
sbb al, -101
and rsi, 71
sub al, 50
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
xor rbx, rdx
bt edx, eax
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], ax
and dl, sil
or cl, dl
imul rdi, rcx
cmovnbe ebx, edx
cmovns ecx, edx
movzx ax, bl
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
