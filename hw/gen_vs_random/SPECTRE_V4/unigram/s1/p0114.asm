.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rsi
imul rdx, rcx, 18
sbb dl, 53
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
imul dl
btc rcx, rdx
cmp al, 75
add bl, 95 # instrumentation
mov bl, 3
mul cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
sbb dil, 95
cmovnp si, ax
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
sbb sil, cl
mov sil, dl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
btc rcx, 16
not si
sub al, dil
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and sil, -84
inc edi
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
and dil, 8
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
adc dil, 112
xchg cl, cl
and bl, dl
bts eax, ebx
add al, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
or cl, cl
add cl, -62
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 50
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
xor al, dil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
sub eax, edx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
add cl, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
adc ecx, 55
cmovnz rcx, rdx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
