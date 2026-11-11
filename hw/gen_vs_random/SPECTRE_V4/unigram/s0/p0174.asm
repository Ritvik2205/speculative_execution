.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts dx, 63
xor rax, rsi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
sbb rbx, rax
add dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
test eax, -818909344
adc cl, 53
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
mul cl
sub cl, 116
or bl, sil
sbb edx, 80
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 54
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
cmovnp rax, rdi
adc ebx, 117
btr rax, rdx
or bx, -111
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
add sil, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 72
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 32
neg al
inc bx
or bl, 90
test dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
sub eax, -523763262
sub dil, -10
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 54
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 13
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
adc ax, 39
add bx, 110
bts rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
