.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, ebx
test cl, 18
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
or cl, al
not cl
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
cmovz edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt edx, 69
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 58
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and dl, -107 # instrumentation
cmovz rdx, rbx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
not eax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and sil, -49 # instrumentation
cmovno si, ax
test rax, 1732677821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
