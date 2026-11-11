.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
movsx eax, sil
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
xchg bl, dl
movsx ecx, ax
sub al, 119
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
bts ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
sub ebx, eax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
sbb bl, al
test ax, -5170
cmp ax, -906
movzx edx, al
imul rdi
cmp al, bl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
add ax, -13169
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
movzx cx, bl
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
add al, 5
cmovo rcx, rcx
and bx, 95
not di
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
mov cl, cl
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sub rax, -701741274
bts edi, 167
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
