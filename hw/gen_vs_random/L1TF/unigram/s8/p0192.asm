.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
imul cx, dx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
test al, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and si, cx
movzx rax, dil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 49
add dil, 64 # instrumentation
sbb dil, bl
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
add cl, 98 # instrumentation
inc cl
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
