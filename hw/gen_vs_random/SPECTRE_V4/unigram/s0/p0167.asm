.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rcx, rdx
add cl, cl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
sub bl, 17
adc edx, 16
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 70
cmp dil, sil
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
sbb cl, al
adc rsi, rbx
test edi, -1249897727
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
add cl, -75 # instrumentation
adc cl, 79
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
sbb eax, -984782068
xchg ebx, ecx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
sub cl, cl
cmovnl cx, di
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
cmovns ax, di
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 85
cmovnbe rdi, rbx
sub cl, sil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
sbb cl, 19
bt edx, esi
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
add bx, bx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 94
sub dil, -10
sub rdx, 22
mul ax
cmovnp dx, ax
sub ebx, 67
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
sbb al, 123
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
or bl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
btc rdx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
