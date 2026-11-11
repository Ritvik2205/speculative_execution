.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
lea eax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
inc dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, 65
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
