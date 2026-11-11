.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ebx, edx
xor dl, bl
sub eax, -523763262
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sbb dl, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
sub rbx, 41
and dx, 1
add cx, 19
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
sub dl, cl
cmp rbx, 59
sub esi, eax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
movsx eax, bl
cmp dl, 89
add dx, -90
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 90
or ebx, ecx
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 91
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
add dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
mul cl
or cl, dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 100
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add sil, sil
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 19
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
