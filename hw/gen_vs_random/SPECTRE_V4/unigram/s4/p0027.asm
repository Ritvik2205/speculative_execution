.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 15251
btc ebx, ecx
test ax, -18054
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 77
mov dl, 81
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
sbb sil, 24
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
adc sil, -112
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 64
cmovnl di, di
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
add bl, -91 # instrumentation
inc rbx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
mul cx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
test al, 52
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
sub eax, ecx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
cmovnz eax, ecx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
sub sil, -35
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
cmovnle dx, dx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 26
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
neg eax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
add al, al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 26
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
or bl, 80
xchg rax, rdx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 97
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
btr ax, 109
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
