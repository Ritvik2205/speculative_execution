.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
dec ax
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
btc rcx, rsi
imul esi, edi
cmovno rdi, rax
and dil, -82
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
xor al, 45
jmp .bb_0.1
.bb_0.1:
sub dx, 34
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
lea eax, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or ax, -10161
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xchg dl, dl
sub dil, -39
movzx edx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmp di, 45
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
