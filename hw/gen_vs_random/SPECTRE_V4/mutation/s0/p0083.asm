.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
xchg ax, ax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
or ebx, -82
bts rdi, 49
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
or rax, rbx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp ax, 28568
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
cmovo cx, bx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
adc dl, bl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
or cl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
adc al, -117
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
add al, -4
movsx si, bl
movzx dx, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
not eax
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
movsx eax, sil
bswap edi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
