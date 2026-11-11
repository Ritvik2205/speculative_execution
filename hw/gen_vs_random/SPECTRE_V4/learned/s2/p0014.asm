.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -906
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
lea edi, qword ptr [rcx + rsi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
imul rdi, rbx, 36
or al, 96
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
cmovs ecx, edx
cmovo rcx, rcx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg eax, edx
imul si, ax, 8
btc rsi, 225
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnp ecx, ebx
or bl, cl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 52
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
bts edi, 167
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
cmovle cx, dx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 31
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
or al, dil
bts ecx, edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
