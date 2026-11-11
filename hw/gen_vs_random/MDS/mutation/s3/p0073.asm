.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and eax, -2116875023
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
cmovle ebx, edi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
bt edi, 254
xor edi, -47
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
bt edx, 254
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
not eax
cmovno eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
