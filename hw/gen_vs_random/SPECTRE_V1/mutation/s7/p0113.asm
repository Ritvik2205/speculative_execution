.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -116
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
and byte ptr [r14 + rax], -119
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
test cx, -17886
or eax, -1641258390
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
xor rcx, 74
adc al, -82
setns cl
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
lea edi, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
imul cl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
