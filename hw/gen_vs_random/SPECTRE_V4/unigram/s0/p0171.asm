.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add dl, -4 # instrumentation
cmovp dx, ax
add dl, 74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
add dl, 109
cmp rcx, -121
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rcx
cmp cl, -105
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sbb dx, 2
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
cmovb rax, rcx
add sil, 3
mov esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 85
mul rbx
xchg rax, rax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
cmovnp rdx, rsi
cmovl rsi, rdx
movzx ax, cl
dec rsi
bts rdi, rcx
dec ax
cmovp rdx, rbx
xor rcx, rdi
adc al, 116
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
btc rax, rsi
or rsi, rdx
or rax, rbx
sub dl, 107
imul dil
neg eax
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
inc rcx
sbb cx, 106
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
or cl, sil
mul eax
and sil, sil
sbb sil, cl
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
