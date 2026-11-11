.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp eax, edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], si
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmovs dx, si
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
xor rsi, -102
sub di, 9
imul dl
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
neg dil
add dl, 54 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
cmovz edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
xor edx, 91
xchg dl, sil
bswap esi
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
add esi, edi
adc rdi, 1
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
movsx cx, cl
bt rbx, rdx
sub rbx, 101
and dx, -107
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
btr ebx, 87
cmovnl rdx, rax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xchg ecx, ecx
bt rbx, 68
add dl, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
or bx, -33
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
dec rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 44
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
test bl, -16
cmp cl, 59
cmovbe rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
