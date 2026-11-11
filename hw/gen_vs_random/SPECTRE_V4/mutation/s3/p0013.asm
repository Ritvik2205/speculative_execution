.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
bts edi, 167
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
sub al, 119
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
movsx eax, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
bts ecx, ebx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
mov cl, cl
sbb bl, al
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sub ebx, eax
imul rdi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
sub bl, 17
sub rax, -701741274
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
movzx edx, al
test ax, -5170
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
add al, 5
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
cmovo rcx, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
not di
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmp al, bl
and bx, 95
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
movsx ecx, ax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmp ax, -15031
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
