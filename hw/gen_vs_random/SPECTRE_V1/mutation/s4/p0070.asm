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
or eax, -126
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
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and cl, 86
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
adc bl, al
cdq
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
