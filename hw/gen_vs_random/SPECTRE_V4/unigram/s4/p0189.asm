.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, sil
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 15
adc cl, 17
test di, si
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 57
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
cmovz edi, ecx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
test di, 23
movzx ebx, sil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rbx, 69
not dx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rax, 92
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 80
or sil, sil
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
cmovnp si, di
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
mov rbx, 9101099553822202722
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and dil, bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovle edi, esi
adc bl, dl
test eax, -544019457
and bl, al
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
mov rsi, 84
sbb sil, bl
cmp rcx, 97
add dl, 110 # instrumentation
movsx ax, dl
movzx ebx, cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 79
sbb edi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
