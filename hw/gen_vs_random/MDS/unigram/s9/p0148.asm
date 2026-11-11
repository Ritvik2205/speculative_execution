.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
test dl, 27
or dil, -71
btr ecx, esi
cmovnle eax, ecx
bts si, cx
not dil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 93
xor bl, sil
test rbx, 100
or rdx, -109
and rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
or sil, sil
and al, 66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
