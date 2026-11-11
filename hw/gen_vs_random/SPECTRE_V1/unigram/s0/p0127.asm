.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, bl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
mov al, sil
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rcx + rcx]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 81
mov cl, bl
add al, 107 # instrumentation
lea edx, qword ptr [rax + rsi + 52]
imul rdi, rax, 78
mov sil, cl
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
