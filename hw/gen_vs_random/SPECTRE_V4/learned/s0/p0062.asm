.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 25
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rax, 183833426
imul si, cx
dec rdx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovs ecx, ecx
movsx ax, sil
add al, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
cmovno ax, ax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 93
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
cmovs ecx, ebx
movsx edi, bx
not bx
cmovno di, bx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
cmp dx, cx
xor bl, dil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and bl, al
xor cl, -101
neg ebx
imul rdi, rsi, 57
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add esi, eax
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
btc rdi, 167
adc rax, 1542637830
mul rbx
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
cmovnbe si, dx
sub al, 99
cmovle rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
movzx cx, al
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
