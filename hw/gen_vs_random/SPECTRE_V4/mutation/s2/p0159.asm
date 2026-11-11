.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
sub edx, edi
sbb cl, cl
and dx, si
and rcx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rcx]
xchg ecx, eax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
mov rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
cmovz bx, dx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rax, 37
mov edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
xor eax, 308288205
cmp al, -53
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sbb sil, -124
add eax, 1936378991
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
xor dx, -43
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
add cl, 53 # instrumentation
cmovnbe esi, edx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
inc edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
sub bl, -89
cmovle rdx, rdx
adc cl, al
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
