.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
imul rdi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
movsx eax, sil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
movzx edx, al
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sbb bl, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
bts ecx, ebx
sub rax, -701741274
test ax, -5170
sub ebx, eax
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
movsx ecx, ax
sub bl, 17
movzx cx, bl
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
add ax, 28666
sbb sil, 108
and bx, 95
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
xchg bl, dl
mov cl, cl
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
add al, 5
not di
sub al, 119
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmp ax, 23131
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
bts edi, 167
cmovo rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
