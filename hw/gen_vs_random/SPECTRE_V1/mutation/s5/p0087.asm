.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
add ebx, -47
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnb rdi, rcx
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
setns bl
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
or eax, -1161451853
and bx, -118
test cx, -17886
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
