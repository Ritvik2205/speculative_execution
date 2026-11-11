.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and dl, dil
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
or rdx, -48
and sil, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and dl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
btr dx, di
or rdi, -11
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and dil, 8 # instrumentation
cmovz rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
or cl, al
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
not edi
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
cmovnbe edx, edi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
