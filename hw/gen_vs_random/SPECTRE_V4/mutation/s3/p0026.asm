.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
bts edi, 167
xchg bl, dl
not di
cmovo rcx, rcx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
add ax, -15653
cmp al, bl
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
imul rdi
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
cmp ax, -15031
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sub al, 98
add al, 118
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and bx, 95
sub rax, -701741274
sub ebx, eax
movzx cx, bl
test ax, -5170
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
movsx ecx, ax
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
movzx edx, al
sub bl, 17
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
bts ecx, ebx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
movsx eax, sil
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
