.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dx
xor dil, cl
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
not dl
mov al, dl
neg rax
sub dl, 107
add rdi, 111
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
xchg sil, sil
inc ebx
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
adc dl, 23
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
or sil, al
and ax, 27239
cmovnb rbx, rax
mul sil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 26
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 4
cmp rsi, 74
cmovz edi, edx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
cmovno rsi, rdx
xor cl, sil
mov bl, 29
add cl, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
imul edx, esi
sub edx, 73
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and al, 82
adc dx, 5
cmovnz esi, esi
cmp rdx, -49
cmovnp si, cx
cmp dl, -82
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
xor dl, dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
movzx si, sil
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
cmovo rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
