.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl 
add ax, -13169 
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147 
cmp ax, -906 
test ax, -5170 
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx 
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lfence
lock dec word ptr [r14 + rbx] 
sbb bl, al 
movsx eax, sil 
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx] 
sub bl, 17 
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rax], dx 
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx] 
sub rax, -701741274 
movsx ecx, ax 
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi] 
sub ebx, eax 
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx] 
cmovo rcx, rcx 
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx] 
sub al, 98 
and rsi, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rsi], 1229240443 
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax] 
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx] 
and rsi, 0b1111111111000 # instrumentation
lfence
lock neg word ptr [r14 + rsi] 
and bx, 95 
movzx edx, al 
cmp al, bl 
and rdi, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdi], dl 
and rsi, 0b1111111111000 # instrumentation
lfence
lock sbb word ptr [r14 + rsi], dx 
bts edi, 167 
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax 
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx] 
xchg bl, dl 
imul rdi 
and rsi, 0b1111111111111 # instrumentation
lfence
neg word ptr [r14 + rsi] 
sbb sil, 108 
mov cl, cl 
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21 
add al, 5 
bts ecx, ebx 
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx 
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi 
and rdx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx] 
not di 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
