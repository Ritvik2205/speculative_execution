.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
cmovno ebx, esi
add bl, -109 # instrumentation
sbb edi, 43
dec rsi
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor dil, sil
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
test bl, bl
not esi
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
btr rax, rdx
movzx bx, bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmovnp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 60
adc bx, bx
add sil, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
not cl
and dil, 96
add cl, -117 # instrumentation
cmovs rax, rcx
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
add bl, 63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
test cx, 43
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
sbb dil, 27
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
