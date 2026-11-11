.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
bt ebx, eax
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
cmovz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
cmovnp si, si
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
xor sil, bl
bts dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
