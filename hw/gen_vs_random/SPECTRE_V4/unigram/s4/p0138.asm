.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -123
and bl, dl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 19
cmovnp ecx, esi
cmovnle rdi, rax
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
mul dil
or eax, ecx
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
cmovno rsi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and al, -12
sub rdx, 84
sub bl, 56
add sil, -94 # instrumentation
cmovnle rax, rsi
xor sil, 85
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
inc rbx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
imul eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rsi
cmovs bx, di
or ecx, 17
sub di, cx
adc rdi, 82
cmovnb rsi, rdi
or rsi, -5
test cx, 19367
dec cl
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
btc rbx, rbx
xor al, 48
and dl, al
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
cmp eax, 1521417271
and ax, 27239
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
add dl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 36
cmp dl, dil
cmp rsi, rsi
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
