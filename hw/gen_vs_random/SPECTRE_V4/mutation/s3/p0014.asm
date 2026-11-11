.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
imul rdi
sub bl, 17
and bx, 95
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
add ax, 28666
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
sub al, 119
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmp ax, -15409
movsx ecx, ax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
sub ebx, eax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
bts ecx, ebx
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sbb sil, 108
test ax, 23760
add al, 5
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sub rax, -701741274
movzx edx, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmovo rcx, rcx
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
movzx cx, bl
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
cmp al, bl
bts edi, 167
not di
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
mov cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
