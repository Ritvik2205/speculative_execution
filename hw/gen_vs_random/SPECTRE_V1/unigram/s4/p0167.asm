.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add al, -47
imul bx, bx
and ecx, ecx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
setnb bl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
jo .bb_0.1
jmp .exit_0
.bb_0.1:
cmovz edi, ebx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmp dil, dil
lea di, qword ptr [rdi + rdi]
add dl, 45 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
