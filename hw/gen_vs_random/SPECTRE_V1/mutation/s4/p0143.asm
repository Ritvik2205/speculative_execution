.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -47
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
setb cl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
test cx, -17886
or eax, -1161451853
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
setns bl
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmovnb rdi, rcx
and bx, -118
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and cl, al
adc al, -92
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
