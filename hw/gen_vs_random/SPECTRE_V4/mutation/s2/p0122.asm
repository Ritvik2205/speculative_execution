.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, ax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
add al, 118
xchg bl, dl
and bx, 95
imul rdi
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
movzx edx, al
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmp ax, 23131
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test ax, 23760
not di
movsx eax, sil
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
bts edi, 167
mov cl, cl
bts ecx, ebx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
sub al, 50
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
movzx cx, bl
sub bl, 17
add ax, -13169
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
sbb bl, al
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
cmovo rcx, rcx
sbb sil, 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
