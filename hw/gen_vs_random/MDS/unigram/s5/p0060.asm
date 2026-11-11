.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and cl, 49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 62
cmovns esi, eax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
or rcx, rbx
test rsi, 71
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
cmovz rcx, rsi
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
cmovno rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
