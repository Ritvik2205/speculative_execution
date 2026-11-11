.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, cl
cmp ax, -15409
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
sub rax, -701741274
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
xchg bl, dl
imul rdi
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
add ax, 28666
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
sub ebx, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and bx, 95
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
test ax, 23760
cmovo rcx, rcx
add al, 5
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
movzx cx, bl
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sub bl, 17
movsx eax, sil
movzx edx, al
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sbb bl, al
not di
bts edi, 167
sbb sil, 108
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
bts ecx, ebx
sub al, 119
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
movsx ecx, ax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
