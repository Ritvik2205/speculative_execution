.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sbb bx, dx
and ax, 62
bt rcx, 236
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cmp edx, edx
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
adc dil, -15
xor bl, al
btr di, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
xor cl, cl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
test ecx, -1293796332
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and bl, sil
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
or eax, 1470564945
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
cmp al, -116
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
