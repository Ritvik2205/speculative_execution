.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, bl
or dx, 3
imul rdx, rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
not dx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
setnl dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
add rdi, 29
add dl, al
imul ax, ax
lea rdx, qword ptr [rax + rax]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
