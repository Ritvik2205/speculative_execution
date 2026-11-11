.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 62
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
cmp rax, 1524061352
bt ecx, 72
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
cmovnz dx, si
sub sil, -50
and dl, al
movsx bx, bl
cmovl rdi, rdx
xchg si, di
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 83
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
add rdi, 105
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
movsx edi, cx
not si
cmovnb esi, edi
test dl, cl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and cl, 58
or dl, al
btc ax, di
adc bl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and dl, bl
mul cl
mov rsi, rcx
cmovle cx, dx
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
xchg dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul esi, ecx
add rdi, rbx
sub rdx, 22
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
sbb cl, 19
cmovl rdi, rcx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
