.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and al, 42 # instrumentation
cmovz edi, ebx
btr edi, edi
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
cmovno si, ax
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
or bl, dil
and dl, 84 # instrumentation
cmovl rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 24
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and edx, -44
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
bt ecx, esi
cmovo bx, ax
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
