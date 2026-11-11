.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
test rax, -648054011
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
cmovo rsi, rdi
cmovo eax, ebx
cmovnp rax, rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovnle edi, ebx
and rax, 4
or dil, -71
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and cl, -23 # instrumentation
cmovno edi, edx
xor ax, si
cmovp ax, dx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
or cl, al
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
test rax, -363019044
xor cl, sil
cmovb rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
