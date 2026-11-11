.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, 23760
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
add ax, -15653
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
bts edi, 167
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
sub ebx, eax
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
cmp ax, -15409
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
movzx edx, al
xchg bl, dl
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
mov cl, cl
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
imul rdi
and bx, 95
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmovo rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
movzx cx, bl
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
bts ecx, ebx
not di
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movsx ecx, ax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sub bl, 17
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
movsx eax, sil
add al, 118
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
sub al, 99
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
