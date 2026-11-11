.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
xchg ax, ax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movzx dx, al
not eax
or rax, rbx
bts rdi, 49
or ebx, -82
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add al, 19
cmovo cx, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bswap edi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
xor edi, 127
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
sub si, si
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
sub dl, -16
or eax, ebx
btc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
