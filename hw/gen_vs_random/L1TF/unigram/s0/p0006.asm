.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 91
lea edi, qword ptr [rdi + rbx + 13]
lea di, qword ptr [rbx + rdi + 79]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xchg dx, bx
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
cmp eax, 123533400
jmp .bb_0.1
.bb_0.1:
xor cl, 89
imul bl
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
add sil, cl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
