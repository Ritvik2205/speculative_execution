.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
or ecx, 102
mov al, dl
bswap esi
movsx rdx, ax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
bts rsi, 236
cmovnz rsi, rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
mov dx, 22195
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
and al, -118
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
mov al, 124
neg sil
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, -1881584175
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, -73
test dl, cl
mov bl, 106
adc bl, cl
cmp ebx, -19
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, 1378432629
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 1914398062
cmovnz eax, eax
sbb al, -14
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
