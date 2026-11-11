.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
add ebx, -47
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test cx, -17886
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
or eax, -126
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and bx, -118
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmovnb rdi, rcx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
setns bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
