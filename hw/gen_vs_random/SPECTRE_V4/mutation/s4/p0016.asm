.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
sub bl, 17
movsx eax, sil
imul rdi
mov cl, cl
cmp al, bl
cmp ax, -15031
not di
sbb bl, al
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
sub ebx, eax
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
cmovo rcx, rcx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
add al, 118
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
add ax, 28666
sbb sil, 108
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
movzx edx, al
sub rax, -701741274
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and bx, 95
sub al, 98
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
bts ecx, ebx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
test ax, -5170
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xchg bl, dl
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
movsx ecx, ax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
movzx cx, bl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
