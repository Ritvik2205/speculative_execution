.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
add dl, 41
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 95
test edx, 573099753
sub cx, 63
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
cmp dl, bl
mul ax
test rdx, 2
not ax
sub ebx, eax
sbb cl, -104
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
or bx, -111
sbb cl, al
sbb cl, bl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 4
cmovns cx, ax
or ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
or rbx, rax
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
cmp al, 19
add cl, -37 # instrumentation
adc ecx, 56
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
test si, ax
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
cmovnl rdx, rax
xor di, bx
mov eax, 26
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
neg cl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmovnp ecx, ecx
and dil, sil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 73
adc dl, 22
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
