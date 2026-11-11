.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
cmovnl ax, bx
sbb edi, 69
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 64
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xor dil, cl
dec rax
mov rbx, rax
test si, 84
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
or cl, 7
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 35
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], ax
sub edi, 37
xchg rsi, rdx
imul rdx, rcx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
test sil, dl
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 23
test eax, -818909344
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
xor bx, 2
movzx dx, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
add bl, -109 # instrumentation
sbb edi, 86
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 43
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
cmovb edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
sub dil, -10
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
add al, 118
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
movzx esi, bl
and sil, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
mov rax, rsi
sbb bl, cl
cmp di, 31
cmovnp si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
