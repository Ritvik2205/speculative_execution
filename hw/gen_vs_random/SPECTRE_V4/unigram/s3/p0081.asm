.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
test bl, -116
adc dl, 99
xor cx, -80
bt dx, 193
add dil, 71 # instrumentation
cmovnle rcx, rdi
cmovno dx, cx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 38
mov cl, 14
add al, 116 # instrumentation
cmovns edi, eax
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
bts cx, 135
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
add dl, 59 # instrumentation
cmovno rdx, rdi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 50
sub di, ax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
cmovnp si, cx
add edx, 89
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
cmp rax, rdx
inc ax
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
movzx edi, cx
cmovnp ax, cx
mov al, 119
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
test cx, 19367
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 86
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rdi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdi], 13
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
xor esi, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
