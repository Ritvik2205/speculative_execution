.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
movzx edx, al
sub ebx, eax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
test ax, -5170
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
sbb bl, al
movsx ecx, ax
sub bl, 17
sbb sil, 108
bts ecx, ebx
movsx eax, sil
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
mov cl, cl
sub al, 99
add al, 118
and bx, 95
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
add ax, -15653
not di
cmovo rcx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
bts edi, 167
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
cmp ax, 23131
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
imul rdi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
movzx cx, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
