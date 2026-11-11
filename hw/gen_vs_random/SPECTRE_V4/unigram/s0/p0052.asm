.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, 89
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
sub bl, 17
cmovnp ax, dx
xchg ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
cmp al, bl
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
add cl, -117 # instrumentation
cmovs rcx, rax
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
cmovnbe rdi, rdx
or ebx, 77
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], si
neg rax
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
sub dl, al
sub ebx, edi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
mul dl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 9
cmovno edx, eax
cmovnbe rbx, rcx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
dec dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
test bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
xor esi, 55
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or edi, 73
add eax, -1796699558
adc cx, cx
cmovnp rax, rax
xchg di, ax
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 14
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
add si, 4
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 28
inc eax
or cl, 57
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
or cl, dl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
