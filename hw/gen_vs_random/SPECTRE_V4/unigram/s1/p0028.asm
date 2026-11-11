.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdx, rdi
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
add rbx, 38
cmovz eax, edi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
add eax, -1796699558
bts rsi, rsi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 84
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
bts eax, 209
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
cmovnb cx, cx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 20
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, ecx
test di, 49
cmovnb rax, rdi
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add rbx, rsi
and rsi, 83
test eax, -544019457
cmp rdi, 44
cmovnz cx, ax
mul ax
cmovnbe edi, edx
add cl, 97
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
cmp dl, 83
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdx]
xchg rcx, rdi
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
bts eax, 209
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
