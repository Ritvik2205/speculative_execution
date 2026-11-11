.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
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
xor al, 89
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
add cl, -121 # instrumentation
movsx si, cl
xchg ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and al, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
bswap rax
cwde
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
