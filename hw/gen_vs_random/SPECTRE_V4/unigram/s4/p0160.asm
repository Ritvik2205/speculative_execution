.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
mov dil, dil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
xor rdi, rbx
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
sub edi, 81
xor rcx, -111
not al
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 32
and cx, ax
and edx, 21
or cl, 66
sbb edi, 107
movzx cx, al
sbb dl, -71
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
cmovns di, cx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rdx, 84
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
test cx, 19367
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
imul rdi, rbx, 96
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
cmovbe ebx, edx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 27
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 12
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
cmp sil, 113
movzx di, sil
movzx esi, cx
test al, 115
and ebx, -122
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
cmp rbx, -3
cmovnle cx, ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and edi, ecx
sub eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
