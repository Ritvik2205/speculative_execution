.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
cmovnb rdx, rcx
and dl, -127 # instrumentation
cmovno eax, ecx
cmovnbe rbx, rcx
and ecx, esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 56
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
bts rax, 77
and al, -114
test bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
test bl, 65
and al, 42 # instrumentation
cmovz edx, ebx
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and dl, 97 # instrumentation
cmovnp ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
