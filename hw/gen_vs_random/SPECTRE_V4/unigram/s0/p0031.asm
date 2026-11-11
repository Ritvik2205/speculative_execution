.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
cmovnb rsi, rax
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
test ax, 2960
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
cmovno eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
or al, al
or rbx, rdx
sbb si, 97
cmovnp rax, rbx
cmovnz rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
xor eax, 1185843233
neg rcx
xor dx, -43
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
cmp cl, sil
and rbx, 10
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 20
bts edx, edi
xor cl, 13
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
xchg di, cx
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 98
and edi, -102
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
cmovz ax, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
add bl, bl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
cmovnz rax, rdx
sub eax, -90064733
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
add cl, 47 # instrumentation
cmovnle bx, cx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
