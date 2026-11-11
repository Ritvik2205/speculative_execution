.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 91
lea rdi, qword ptr [rcx + rcx + 60]
cmp rax, 900122030
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], cx
add cl, 44 # instrumentation
cmovz eax, ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
bt edx, ecx
mul cx
or dl, cl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
movsx di, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
