.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
xor al, 69
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
btc ax, dx
cmovnz di, dx
xor eax, -164167056
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or dx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
inc edi
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmp dil, -124
sbb eax, -984782068
sbb di, -76
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovnbe eax, edi
or bx, dx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test al, sil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor sil, 56
cmovnbe dx, ax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmp rax, -1102558854
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
