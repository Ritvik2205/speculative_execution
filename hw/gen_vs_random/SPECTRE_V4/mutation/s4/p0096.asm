.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movzx edx, al
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp al, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
bts edi, 167
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test ax, -5170
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
movzx cx, bl
add al, 118
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmp ax, -15409
bts ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
movsx ecx, ax
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
cmovo rcx, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
imul rdi
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
not di
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub bl, 17
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sub al, 119
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and bx, 95
sub rax, -701741274
sbb sil, 108
add ax, -15653
sub ebx, eax
xchg bl, dl
movsx eax, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
