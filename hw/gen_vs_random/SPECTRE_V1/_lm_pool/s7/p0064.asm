.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
setnle cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 99
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and dil, -114
bswap rcx
add al, al
sbb cl, dil
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
