.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 109
add eax, 109
sbb cl, cl
setno al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
sub al, 26
cmp dl, sil
jmp .bb_0.1
.bb_0.1:
xor dil, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 19
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
add dl, -8 # instrumentation
lea ebx, qword ptr [rax]
mul rax
cmovnp rcx, rax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
add dl, 125 # instrumentation
cmovbe rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
