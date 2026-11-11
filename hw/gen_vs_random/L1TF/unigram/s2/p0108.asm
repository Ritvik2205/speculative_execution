.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add cl, 72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
xor sil, 64
and rax, 1163013815
add al, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
cmovnp edx, ecx
cdq
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 30
jmp .bb_0.1
.bb_0.1:
mov dl, dil
add dil, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
imul esi, esi, 93
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 74
xchg rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
