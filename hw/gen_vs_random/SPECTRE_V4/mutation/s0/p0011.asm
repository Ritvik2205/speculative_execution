.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 10655
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmovo ax, ax
sub eax, -1804712207
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp rdx, rcx
cmovnbe rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, -112
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
bt bx, di
or esi, 32
and eax, -1948401947
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
or eax, -1779536330
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
cmp al, -44
mov dl, bl
inc dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
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
