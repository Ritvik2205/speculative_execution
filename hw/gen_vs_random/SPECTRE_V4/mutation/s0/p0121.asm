.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
movzx edx, al
not di
xchg bl, dl
bts ecx, ebx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and bx, 95
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
sub al, 119
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
imul rdi
sbb sil, 108
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
add al, 5
add ax, -13169
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
cmp al, bl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
mov cl, cl
movzx cx, bl
sub bl, 17
sub ebx, eax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
movsx ecx, ax
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmovo rcx, rcx
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmp ax, -15409
test ax, 23760
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
