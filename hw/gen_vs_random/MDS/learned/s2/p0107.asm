.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
or ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmovnz dx, cx
or eax, -1827868798
cmovo dx, cx
or dil, -57
and eax, -2116875023
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 11
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
cmovz di, si
or rax, 1749358813
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
cmovnle rax, rcx
xor al, -15
cmovns eax, eax
cmovnz edx, eax
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
xor al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
