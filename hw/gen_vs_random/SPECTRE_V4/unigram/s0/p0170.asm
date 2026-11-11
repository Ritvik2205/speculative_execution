.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 81
movzx ax, bl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
or dil, al
and bx, 95
not di
xor bl, bl
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
cmovle rax, rsi
cmovb ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
or sil, 69
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 27
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
cmovle rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
sub al, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
add bl, 65 # instrumentation
cmovnp bx, si
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 80
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
xor edi, 78
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
add sil, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
cmp sil, 88
cmp edx, 81
and rcx, -102
movzx dx, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
add dl, dil
not rdx
and ax, 35
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
inc ebx
xchg rax, rsi
cmovle esi, edi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
