.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 77
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and dil, 33
cmovp ax, di
bt rax, rsi
cmovnle ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
xor dl, -68
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or cl, al
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
not esi
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovnbe dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
