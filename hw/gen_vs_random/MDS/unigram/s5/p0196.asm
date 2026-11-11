.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, -2
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
btc rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
btr rsi, rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
bts ebx, 205
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and cl, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
or eax, -927349615
or ecx, ecx
cmovz esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
