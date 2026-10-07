.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl 
lfence
add ax, -13169 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rcx], -1481425147 
lfence
cmp ax, -906 
lfence
test ax, -5170 
lfence
or bx, 0b1000000000000000 # instrumentation
lfence
bsf bx, bx 
lfence
add dl, -10 # instrumentation
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock dec word ptr [r14 + rbx] 
lfence
sbb bl, al 
lfence
movsx eax, sil 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov dx, word ptr [r14 + rdx] 
lfence
sub bl, 17 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovns edx, dword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rax], dx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb esi, dword ptr [r14 + rbx] 
lfence
sub rax, -701741274 
lfence
movsx ecx, ax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmp si, word ptr [r14 + rdi] 
lfence
sub ebx, eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and rsi, qword ptr [r14 + rcx] 
lfence
cmovo rcx, rcx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf edx, dword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub si, word ptr [r14 + rbx] 
lfence
sub al, 98 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rsi], 1229240443 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movzx dx, byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub rcx, qword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock neg word ptr [r14 + rsi] 
lfence
and bx, 95 
lfence
movzx edx, al 
lfence
cmp al, bl 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdi], dl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock sbb word ptr [r14 + rsi], dx 
lfence
bts edi, 167 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdx], rax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movsx rdx, byte ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp dl, byte ptr [r14 + rcx] 
lfence
xchg bl, dl 
lfence
imul rdi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg word ptr [r14 + rsi] 
lfence
sbb sil, 108 
lfence
mov cl, cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul edi, dword ptr [r14 + rcx], 21 
lfence
add al, 5 
lfence
bts ecx, ebx 
lfence
or rcx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdi, rcx 
lfence
or rsi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdx, rsi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rax, qword ptr [r14 + rdx] 
lfence
not di 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
