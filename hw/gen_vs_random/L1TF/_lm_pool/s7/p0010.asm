.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
lea ax, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
sbb sil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add dil, 88
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test al, -84
lea rcx, qword ptr [rdi + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
