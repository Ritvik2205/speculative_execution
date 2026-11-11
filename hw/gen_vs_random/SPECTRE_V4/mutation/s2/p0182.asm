.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, dl
sub rax, -701741274
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
sub ebx, eax
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movsx ecx, ax
bts ecx, ebx
imul rdi
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
sub bl, 17
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmovo rcx, rcx
sub al, 50
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
movzx edx, al
movsx eax, sil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and bx, 95
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
sbb bl, al
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
cmp al, bl
add ax, 28666
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test ax, 23760
cmp ax, -15031
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
add al, 5
not di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
