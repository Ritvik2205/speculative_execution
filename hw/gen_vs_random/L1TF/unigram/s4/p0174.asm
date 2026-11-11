.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
lea si, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
setp al
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
sbb dil, 50
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
cmovo rcx, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
