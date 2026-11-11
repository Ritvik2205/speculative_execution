.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
bts ebx, 22
sub al, 119
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
mov rcx, 5862286138240743445
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
btc bx, ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
cmp bl, dl
cmovle cx, dx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovp ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
cmp ax, dx
sub dx, 70
test al, 80
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
add cl, -37 # instrumentation
adc edx, 77
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
sbb al, 32
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
add edx, 78
sbb bl, cl
adc al, cl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
or sil, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
add rsi, rdi
test edx, 573099753
and ax, 35
cmovnp dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
add rax, rsi
cmp rdi, 20
xchg rbx, rcx
xor sil, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
