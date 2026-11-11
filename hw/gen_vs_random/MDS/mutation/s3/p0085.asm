.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 254
cmovle ebx, edi
xor edi, 38
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and eax, -872608366
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
bt edx, 75
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
not eax
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
cmovno eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
