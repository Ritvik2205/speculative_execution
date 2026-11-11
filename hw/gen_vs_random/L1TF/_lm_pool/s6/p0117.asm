.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
sbb al, -50
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
