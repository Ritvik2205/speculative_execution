.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
sub cl, al
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
xor al, cl
add dl, 58
lea rdi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 33
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
cmovl di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
