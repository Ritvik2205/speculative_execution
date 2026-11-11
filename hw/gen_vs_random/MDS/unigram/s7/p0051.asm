.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, sil
xor dil, -70
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 74
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
xor ebx, 46
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
and rdi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
btr ax, ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 70
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
test dl, -95
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
or eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
