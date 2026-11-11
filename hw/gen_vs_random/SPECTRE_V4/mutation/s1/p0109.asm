.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax
test bl, -116
cmp rax, -1247892360
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
mul rdx
imul ecx
cmp eax, 1521417271
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
cmp al, -53
movzx si, bl
and edi, -102
movsx ax, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
sub rdi, 105
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
cmp rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sub cl, dl
imul cx, cx
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
or eax, -612395655
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
xchg dl, bl
test bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmp edi, ebx
adc al, dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
bswap rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
btc edi, esi
cmp al, 114
mov dl, bl
inc dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
