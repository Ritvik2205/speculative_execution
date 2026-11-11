.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -15653
bts rax, 157
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
adc ax, 57
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
imul bl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 71
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 80
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
cmp dl, 93
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 61
cmovnle cx, si
sbb ax, -19255
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
cmovnle ax, si
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor al, 59
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 23
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 40
sbb edi, 6
xor rax, rdx
add bx, 110
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 27
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
not al
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 20
movzx eax, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
cmovnbe eax, edi
add cl, dl
adc ax, ax
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
btc rdi, rdx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
cmp rdi, 88
add rbx, rsi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
