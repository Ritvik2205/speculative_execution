.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
or eax, 1802312508
sbb dl, dil
bts edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 9
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
xor ax, bx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
cmovns bx, di
mov rbx, 9101099553822202722
xor al, 69
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add bl, 106 # instrumentation
cmovs eax, ebx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and al, cl
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 65
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
cmovnp si, ax
lea edx, qword ptr [rbx + rdi + 47]
sub cl, 116
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
bt edx, eax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sbb di, -76
xchg si, di
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
cmp sil, 88
cmovnle rbx, rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bts rbx, 77
adc rdx, 71
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
imul esi, edx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
adc eax, -1513455903
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
