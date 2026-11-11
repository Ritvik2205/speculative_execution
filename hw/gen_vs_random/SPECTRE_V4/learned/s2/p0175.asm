.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15409
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
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
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
sub al, 99
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
cmovnbe rax, rdx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
cmovz rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
imul rdi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
xor eax, -437098167
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
