.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, dl
movzx edx, al
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sub rax, -701741274
not di
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
add al, 118
cmp ax, -15031
and bx, 95
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
cmovo rcx, rcx
cmp al, bl
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
bts ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
sbb sil, 108
imul rdi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
sub ebx, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
movsx eax, sil
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
sub al, 98
add ax, 28666
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
test ax, 23760
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
movsx ecx, ax
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
movzx cx, bl
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
