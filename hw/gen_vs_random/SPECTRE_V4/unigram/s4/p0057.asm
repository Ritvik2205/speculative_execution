.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
or bx, cx
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
cmovnz cx, ax
xor dil, 19
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb ax, di
add ax, -13169
sbb sil, al
dec dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
cmp bx, 3
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmovz di, di
add si, si
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
dec edi
xor sil, 56
test rcx, -2118888343
bts ebx, ebx
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
and rdx, 12
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
mov dl, -34
mov di, 27
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovl rcx, rdx
xor al, 69
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and dl, 16
cmovnle di, di
xor bl, dil
and rcx, -102
bts ecx, 58
add dl, -99 # instrumentation
not eax
and sil, dil
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 33
test sil, cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
xchg si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
