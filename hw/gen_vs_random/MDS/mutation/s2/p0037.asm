.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, -47
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
bt edi, 254
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
cmovle ebx, edi
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
jmp .bb_0.1
.bb_0.1:
bt edx, 69
not eax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
cmovno eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
