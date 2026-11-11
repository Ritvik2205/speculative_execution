.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ecx, eax
and dil, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and ebx, 74
cmovnbe rdx, rcx
test cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
cmovnp eax, esi
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 79
or al, sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and bl, -6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
btr cx, 9
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
cmovns esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
