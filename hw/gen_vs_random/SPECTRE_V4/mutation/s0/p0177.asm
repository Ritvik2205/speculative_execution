.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ax, ax
movsx eax, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
bswap edi
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cmp ax, -22704
not eax
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
adc al, -59
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
bts rdi, 23
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
or ebx, -82
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
adc dl, bl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
or rax, rbx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
or cl, bl
add al, -99
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
movsx si, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
movzx dx, al
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
cmovo cx, bx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
