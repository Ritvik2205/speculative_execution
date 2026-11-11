.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ecx, edx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
cmovz edi, edx
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
cmovz rbx, rax
and si, ax
or rcx, 2
and si, 32
test sil, 42
bt ecx, edi
btr rdi, 39
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 25
and dl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
cmovno bx, si
cmovnz rsi, rdx
and sil, 65
btr rcx, 55
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
