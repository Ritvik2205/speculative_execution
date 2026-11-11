.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and dil, 98
lea edx, qword ptr [rbx + rcx + 37832]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cdq
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
xor dil, -37
lea ebx, qword ptr [rcx + rdx]
and dil, -93
movsx rcx, bx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
xor cl, dl
sbb eax, -108
sbb al, -114
xchg bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
