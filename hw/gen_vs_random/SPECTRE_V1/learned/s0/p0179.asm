.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -126
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and cl, bl
add rax, -704585563
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
bt esi, eax
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
