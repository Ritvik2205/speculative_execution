.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and dil, cl
lea edi, qword ptr [rbx]
lea di, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
add ax, 23614
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
xor cl, bl
imul rbx, rdi, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
