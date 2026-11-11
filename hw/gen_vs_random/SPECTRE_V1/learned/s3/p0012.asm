.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
xor cl, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rcx + rcx + 96]
sbb eax, 1830317432
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
lea bx, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add dl, cl
and sil, -55
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
