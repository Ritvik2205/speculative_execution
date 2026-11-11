.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
cmovo edi, ecx
btc eax, 40
and di, ax
or rcx, 54
or sil, -78
btr edx, esi
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and cl, 112 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
btc si, dx
btc rdi, 221
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
cmovno rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
