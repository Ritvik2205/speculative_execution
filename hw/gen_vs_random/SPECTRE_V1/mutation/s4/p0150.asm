.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
add ebx, -116
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
setb cl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
or eax, -126
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
cmovnb rdi, rcx
test cx, -17886
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
setns bl
and bx, -118
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
