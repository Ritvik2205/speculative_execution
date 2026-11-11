.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 97
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
bt edi, 17
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
cmp al, 19
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
imul cl
btc si, 25
add dil, 56 # instrumentation
cmovle rcx, rdi
add ecx, edi
add dil, 72 # instrumentation
cmovle di, dx
cmp ax, 23131
cmp dil, -124
bswap ebx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
add bx, 110
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 2
or dl, cl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
dec rax
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 1
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
movzx edx, cl
xchg edx, edi
cmovnz ax, bx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
xor cl, -54
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
cmovs esi, ecx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
cmovp ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
