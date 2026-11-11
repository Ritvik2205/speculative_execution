.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rcx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
xchg bl, dl
test ax, 23760
movsx eax, sil
sub ebx, eax
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
add ax, -13169
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmp al, bl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
add al, 118
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
sbb bl, al
bts ecx, ebx
sub al, 99
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
mov cl, cl
not di
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
movsx ecx, ax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmp ax, -906
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub bl, 17
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
movzx edx, al
sbb sil, 108
imul rdi
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and bx, 95
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
sub rax, -701741274
movzx cx, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
