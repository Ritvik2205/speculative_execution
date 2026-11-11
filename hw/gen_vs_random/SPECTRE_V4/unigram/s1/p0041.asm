.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 17
xor cl, sil
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
cmovz di, bx
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
add rcx, 32
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 91
movzx rbx, cx
xchg ebx, ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
add edi, 71
xor dl, -123
btr cx, 252
cmovp rsi, rdx
add al, al
sub rdi, rdx
test dil, -5
test al, 57
sbb al, -4
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
dec di
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmovnb esi, eax
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 36
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], edx
imul esi, esi, 60
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
add dil, 32 # instrumentation
adc rdi, 61
cmovnle cx, bx
cmovnbe eax, edx
cmovnb ax, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and dil, -120
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
bswap rcx
mov dl, 81
mov al, -114
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rcx
mov bl, al
mul ecx
adc rax, -691707152
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 86
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
