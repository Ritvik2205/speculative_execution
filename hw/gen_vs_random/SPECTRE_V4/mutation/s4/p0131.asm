.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
movsx eax, sil
or rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
movsx si, bl
add al, -55
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
cmp ax, 28568
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
not eax
cmovo cx, bx
movzx dx, al
or cl, bl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
or ebx, -78
adc al, 43
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
xchg ax, ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
bts rdi, 23
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
